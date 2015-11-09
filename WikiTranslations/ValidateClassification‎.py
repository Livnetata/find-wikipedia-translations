__author__ = 'Neta'

import pickle
from translatedFromEditSummaries import translated_from_edit_summary
from translatedFromDiscussion import translated_from_discussion
from ComparingFeatures import compare_features_lists, overlap_of_feature_lists
import He_En_Dictionary
from FindNumbers import find_numbers_from_text
from FindInlinks import find_interlinks, find_features
from FindExternalLinks import find_links_citations
from sklearn.tree import DecisionTreeClassifier, export_graphviz
from sklearn.externals.six import StringIO
import pydotplus
import numpy as np
from scipy import stats


def validate_classification(trans_pages):
    """
    :param trans_pages:
    :return:
    """
    # Initialization
    tp = 0  # True positive.
    fp = 0  # False positive.
    tn = 0  # True negative.
    fn = 0  # False negative.

    # Building he en dictionary
    dict_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_en_dict.p"
    (en_dict, he_dict, he_en_dict, _) = pickle.load(open(dict_file, "rb"))
    output_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/results/study_results.txt"
    output_file = open(output_name, "w")
    output_file.write(
        "en_page_name is_translated\tfrom_edit_summaries\tfrom_talk_page\tfrom_features\tfinal_result\n")

    for page in trans_pages:  # Going over all the pages in the study set.

        classification = False  # default classification

        # 1. Checking for information in the edit summaries.
        if page.get_edit_sum() is not None:
            summary = translated_from_edit_summary(page.get_edit_sum())
            classification = summary
        # 2. Checking for information in the talk pages.
        if page.get_talk_text() is not None:
            talk = translated_from_discussion(page.get_talk_text())
            classification = classification or talk
        else:
            talk = False
        # 3. Check features:
        feature = calculate_translated_odds(page, en_dict, he_dict, he_en_dict)
        classification = classification or feature

        # Calculating the accumulated confusion score.
        (tp, tn, fp, fn) = confusion_score(page.translated, classification, tp, tn, fp, fn)
        # if summary or talk:
        #     print(page.get_en_title(), page.translated, summary, talk, feature)
        line = (page.get_en_title(), str(page.translated), str(summary), str(talk), str(feature),
                str(classification), "\n")
        line = '\t'.join(line)
        output_file.write(line)

    recall = tp / (tp + fn)
    precision = tp / (tp + fp)
    # print(tp, tn, fp, fn)
    # print((recall, precision))
    output_file.write("tp: " + str(tp) + "\ttn: " + str(tn) + "\tfp: " + str(fp) + "\tfn: " +
                      str(fn) + "\n")
    output_file.write("recall: " + str(recall) + "\tprecision: " + str(precision))
    output_file.close()


def compare_features(page, en_dict, he_dict, he_en_dict):
    """
    Comparing features of two connected pages (specifically interlinks and numbers) to determine
    their similarity.
    :param page: a page from Page_Class.
    :param en_dict: Connecting English words to pages id.
    :param he_dict: Connecting Hebrew words to pages id.
    :param he_en_dict: Connecting Hebrew ids to en ids.
    :return: Six similarity measures
    """
    (he_features, _, _, _, he_medialinks) = find_features(page.get_he_text())
    (en_features, _, _, _, en_medialinks) = find_features(page.get_en_text())
    he_features_ids = []
    for feature in he_features:
        if feature[1] == "link":
            he_features_ids.append(
                He_En_Dictionary.convert_he_title_to_en_id(feature[0], he_dict, he_en_dict))
        else:  # right now we are hoping that the numbers of the text don't match the ids.
            he_features_ids.append(int(feature[0].replace(",", "").replace(".", "")))
    en_features_ids = []
    for feature in en_features:
        if feature[1] == "link":
            en_features_ids.append(He_En_Dictionary.convert_en_title_to_en_id(feature[0], en_dict))
        else:  # right now we are hoping that the numbers of the text don't match the ids.
            en_features_ids.append(int(feature[0].replace(",", "").replace(".", "")))

    (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
     missing_source_information) = compare_features_lists(en_features_ids, he_features_ids)
    return (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
            missing_source_information)


def compare_interlinks(page, en_dict, he_dict, he_en_dict):
    """
    Comparing features (interlinks) of two connected pages to determine
    their similarity.
    :param page: a page from Page_Class.
    :param en_dict: Connecting English words to pages id.
    :param he_dict: Connecting Hebrew words to pages id.
    :param he_en_dict: Connecting Hebrew ids to en ids.
    :return: Six similarity measures.
    """
    (he_inlinks, _, _, _, he_medialinks) = find_interlinks(page.get_he_text())
    (en_inlinks, _, _, _, en_medialinks) = find_interlinks(page.get_en_text())
    he_inlinks_ids = []
    for title in he_inlinks:
        he_inlinks_ids.append(
            He_En_Dictionary.convert_he_title_to_en_id(title, he_dict, he_en_dict))
    en_inlinks_ids = []
    for title in en_inlinks:
        en_inlinks_ids.append(He_En_Dictionary.convert_en_title_to_en_id(title, en_dict))
    ((norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
      missing_source_information)) = compare_features_lists(en_inlinks_ids, he_inlinks_ids)
    return (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
            missing_source_information)


def compare_numbers(page):
    """
    Comparing features (numbers) of two connected pages to determine
    their similarity.
    :param page: a page from Page_Class.
    :return: Six similarity measures.
    """
    he_numbers = find_numbers_from_text(page.get_he_text())
    en_numbers = find_numbers_from_text(page.get_en_text())
    (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
     missing_source_information) = compare_features_lists(en_numbers, he_numbers)
    return (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
            missing_source_information)


def compare_external_links(page):
    """
    Comparing features (external links) of two connected pages to determine
    :param page: a page from Page_Class.
    :return: Four similarity measures.
    """
    he_external = find_links_citations(page.get_he_text())
    en_external = find_links_citations(page.get_en_text())
    (per_conj, missing_source_information, added_target_information, source_list) = \
        overlap_of_feature_lists(en_external, he_external)
    return (per_conj, missing_source_information, added_target_information, source_list)


def calculate_translated_odds(page, en_dict, he_dict, he_en_dict):
    """ Calculating whether a Hebrew page was translated from English according to its text using
    odds algorithm.
    :param page: a page from Page_Class.
    :param en_dict: Connecting English words to pages id.
    :param he_dict: Connecting Hebrew words to pages id.
    :param he_en_dict: Connecting Hebrew ids to en ids.
    :return: True if a page was translated and False otherwise.
    """

    # calculating similarity measures for interlinks and numbers:
    (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
     missing_source_information) = compare_features(page, en_dict, he_dict, he_en_dict)

    # returning the maximum likelihood that a page is translated according to three similarity measures:
    if added_target_information < 10 and norm_distance != -1:
        # print(norm_distance, norm_similar_one, norm_similar_pairs, per_conj,
        # added_target_information, missing_source_information)
        odds_inlinks = max(norm_distance, norm_similar_one, norm_similar_pairs) + (per_conj - 0.4)
        # adding a plus minus for the general congruence
    else:
        odds_inlinks = 0

    # calculating similarity measures for external links and citations:
    (per_conj, missing_source_information, added_target_information, source_list) = \
        compare_external_links(page)

    # calculating the odds according the the measures that it is a translation:
    if (added_target_information != -1):
        # Information at the target, otherwise we can't deduce anything.
        if (source_list == 0) and (added_target_information) >= 2:
            # Information at the target but not source.
            odds_external = -float(added_target_information / 10)
        elif (per_conj > 0) and (source_list > 2):
            # Target copied from source. another more conservative option: and (overlap >= 2)
            odds_external = per_conj * 2
        elif (missing_source_information != -1) and \
                        (added_target_information - (source_list - missing_source_information)) > 2:
            # more information in target than in overlap and less than 2
            odds_external = -float(added_target_information / 10)
        else:
            odds_external = 0
    else:
        odds_external = 0

    # print(page.get_en_title(), page.translated, odds_inlinks, odds_external)

    if odds_inlinks + odds_external > 0.7:
        return True
    else:
        return False


def create_training_set(trans_pages):
    training_set = []
    translated = []

    # Building he en dictionary
    dict_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_en_dict.p"
    (en_dict, he_dict, he_en_dict, _) = pickle.load(open(dict_file, "rb"))

    for page in trans_pages:  # Going over all the pages in the study set.

        # 1. Checking for information in the edit summaries.
        if page.get_edit_sum() is not None:
            summary = translated_from_edit_summary(page.get_edit_sum())
        else:
            summary = False

        # 2. Checking for information in the talk pages.
        if page.get_talk_text() is not None:
            talk = translated_from_discussion(page.get_talk_text())
        else:
            talk = False

        # 3. Calculating similarity measures for interlinks and numbers:
        (norm_distance, norm_similar_one, norm_similar_pairs, per_conj_inter,
         added_target_information_inter, missing_source_information_inter) = \
            compare_features(page, en_dict, he_dict, he_en_dict)
        # 4. Calculating similarity measures for external links and citations:
        (per_conj_external, missing_source_information_external, added_target_information_external,
         source_list) = compare_external_links(page)

        training_set.append((summary, talk, norm_distance, norm_similar_one, norm_similar_pairs,
                             per_conj_inter, added_target_information_inter,
                             missing_source_information_inter, per_conj_external,
                             missing_source_information_external, added_target_information_external,
                             source_list))
        translated.append(page.translated)

    return (training_set, translated)


def tree_classification(trans_pages):
    # Initialization
    tp = 0  # True positive.
    fp = 0  # False positive.
    tn = 0  # True negative.
    fn = 0  # False negative.

    (training_set, translated) = create_training_set(trans_pages)  # Building training set.
    tree_classifier = DecisionTreeClassifier(max_depth=5,
                                             max_features="log2",
                                             min_samples_split=5)  # Training the decision tree classifier.
    tree_classifier.fit(training_set, translated)
    classification = tree_classifier.predict_proba(
        training_set)  # Checking the classifier on the same data set.

    for i in range(len(classification)):
        (tp, tn, fp, fn) = confusion_score(translated[i], round(classification[i][1]), tp, tn, fp,
                                           fn)

    recall = tp / (tp + fn)
    precision = tp / (tp + fp)
    print(tp, tn, fp, fn)
    print((recall, precision))

    feature_names = ("summary", "talk", "norm_distance", "norm_similar_one", "norm_similar_pairs",
                     "per_conj_inter", "added_target_information_inter",
                     "missing_source_information_inter", "per_conj_external",
                     "missing_source_information_external", "added_target_information_external",
                     "source_list")
    get_code(tree_classifier, feature_names)
    # visualize_tree(tree_classifier, feature_names)
    dot_data = StringIO()
    export_graphviz(tree_classifier, out_file=dot_data)
    graph = pydotplus.graph_from_dot_data(dot_data.getvalue())
    graph.write_pdf("tree.pdf")


def confusion_score(translated, classification, tp, tn, fp, fn):
    """

    :param translated: Manual clarification if a page is translated of not.
    :param classification: Algorithm classification for translation.
    :param tp: Current count of true positive.
    :param tn: Current count of true negative.
    :param fp: Current count of false positive.
    :param fn: Current count of false negative.
    :return: Counts updated according to the status of the current page.
    """
    if translated == 1:
        if classification == 1:
            tp += 1
        else:
            fn += 1
    else:
        if classification == 1:
            fp += 1
        else:
            tn += 1
    return (tp, tn, fp, fn)


def get_code(tree, feature_names):
    spacer_base = "    "
    left = tree.tree_.children_left
    right = tree.tree_.children_right
    threshold = tree.tree_.threshold
    features = [feature_names[i] for i in tree.tree_.feature]
    value = tree.tree_.value

    def recurse(left, right, threshold, features, node, depth):
        spacer = spacer_base * depth
        if (threshold[node] != -2):
            print(spacer + "if ( " + features[node] + " <= " + str(threshold[node]) + " ) {")
            if left[node] != -1:
                recurse(left, right, threshold, features, left[node], depth + 1)
            print(spacer + "}\n" + spacer + " else {")
            if right[node] != -1:
                recurse(left, right, threshold, features, right[node], depth + 1)
            print(spacer + "}")
        else:
            print(spacer + "return " + str(value[node]))

    recurse(left, right, threshold, features, 0, 0)


# def visualize_tree(tc, feature_names):
#     """Create tree png using graphviz.
#
#     Args
#     ----
#     tree -- scikit-learn DecsisionTree.
#     feature_names -- list of feature names.
#     """
#     with open("tree.dot", 'w') as f:
#         export_graphviz(tc, out_file=f,
#                         feature_names=feature_names)
#
#     command = ["dot", "-Tpng", "tree.dot", "-o", "dt.png"]
#     try:
#         subprocess.check_call(command)
#     except:
#         exit("Could not run dot, ie graphviz, to "
#              "produce visualization")


def average_conjunction(trans_pages):
    """
    Calculating the average conjunction of the text features between the Hebrew and English texts.
    :param trans_pages: A list of pages from Page_Class.
    :return: the average and variance conjunctions of translated, original and all pages.
    """
    # Building he en dictionary
    dict_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_en_dict.p"
    (en_dict, he_dict, he_en_dict, _) = pickle.load(open(dict_file, "rb"))

    translated_conj = []
    original_conj = []

    for page in trans_pages:  # Going over all the pages in the study set.
        (_, _, _, per_conj, _, _) = compare_features(page, en_dict, he_dict, he_en_dict)
        # print(per_conj)
        if per_conj > -1:
            if page.translated == 1:
                translated_conj.append(per_conj)
            else:
                original_conj.append(per_conj)

    print(np.mean(translated_conj), np.var(translated_conj))
    print(np.mean(original_conj), np.var(original_conj))
    print(np.mean(translated_conj + original_conj), np.var(translated_conj + original_conj))
    print(stats.ks_2samp(translated_conj, original_conj))


trans_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/trans_pages.p"
trans_pages = pickle.load(open(trans_file, "rb"))
validate_classification(trans_pages)
# tree_classification(trans_pages)
# average_conjunction(trans_pages)
