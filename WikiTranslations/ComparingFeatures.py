__author__ = 'Neta'

import EditDistance


def added_information(loc_list):
    """
    Checks the stream of information that is unique to a list.
    :param loc_list: a list of locations (of another list) that are unique to this list compared
    to another.
    :return: number of sequences.
    """
    sequence_factor = 4
    total = 0
    adjoint = 0
    if len(loc_list) > 2:
        diff = [loc_list[i] - loc_list[i - 1] for i in range(1, len(loc_list))]
        for i in diff:
            if i <= 2:
                adjoint += 1
            elif adjoint >= sequence_factor:
                total += 1
            else:
                adjoint = 0
        if adjoint >= sequence_factor:
            total += 1

    return total


def compare_features_lists(source_list, target_list):
    """
    Comparing the information of the target and source lists.
    The lists should contain similar features.
    :param source_list: list of features (numbers or strings) of the source list.
    :param target_list: list of features (numbers or strings) of the target list.
    :return: the odds that the target is a translation:
    norm_distance: 1-Levenshtein distance of the conjoined lists normalized to longer list length.
    norm_similar_one: One permutation similarity of the conjoined lists normalized to list length.
    norm_similar_pairs: Similarity of the conjoined pairs normalized.
    per_conj: Normalized conjunction set of target and source lists.
    added_target_information: Number of sequences that are in the target list but not in the source
     list.
    missing_source_information: Number of sequences that are in the source list but not in the
     target list.
    """

    ## Initialization
    min_info = 5
    conj_source = []  # A list of source items that are found in the target list ordered by appearance.
    dif_source_loc = []  # A list of locations for the source items that are unaccounted for.
    conj_target = []  # A list of target items that are found in the source list ordered by appearance.
    dif_target_loc = []  # A list of locations for the target items that are unaccounted for.

    unique_source_list = set(source_list)
    unique_target_list = set(target_list)

    # Checking that the lists contain enough information
    if len(unique_source_list) > min_info and len(unique_target_list) > min_info:
        conj_st = unique_source_list.intersection(unique_target_list)
        # Conjunction set between target and source.
        per_conj = len(conj_st) / float(
            min(len(unique_source_list), len(unique_target_list)))  # Normalized

        ##  Creating the lists of joined information
        for i in range(len(source_list)):
            if source_list[i] in conj_st:  # writing the conjoined items while keeping the order
                conj_source.append(source_list[i])
            else:  # writing the locations of the unaccounted items while keeping the order
                dif_source_loc.append(i)

        for i in range(len(target_list)):
            if target_list[i] in conj_st:  # writing the conjoined items while keeping the order
                conj_target.append(target_list[i])
            else:  # writing the locations of the unaccounted items while keeping the order
                dif_target_loc.append(i)
    else:
        per_conj = -1

    ## Comparing between the conjoined lists
    if len(conj_source) > min_info and len(conj_target) > min_info:
        # option 1: Levenshtein Distance
        distance = EditDistance.levenshtein(conj_source, conj_target)
        norm_distance = 1 - distance / float(max(len(conj_source), len(conj_target)))

        # option 2: checking similarity between the lists in distance 1
        similar = EditDistance.one_permutation(conj_source, conj_target)
        norm_similar_one = similar / float(min(len(conj_source), len(conj_target)))

        # option 3: checking similarity between pairs in the lists
        pairs_similarity = EditDistance.checking_pairs_conjunction(conj_source, conj_target)
        norm_similar_pairs = pairs_similarity / float(
            min(len(conj_source) + 1, len(conj_target) + 1))
    else:
        distance = -1
        norm_distance = -1
        similar = -1
        norm_similar_one = -1
        pairs_similarity = -1
        norm_similar_pairs = -1

    ## Checking for added information sequences at the target page
    added_target_information = added_information(dif_target_loc)

    ## Checking for missing information sequences at the source page
    missing_source_information = added_information(dif_source_loc)

    # return(distance, norm_distance, similar, norm_similar_one, pairs_similarity, norm_similar_pairs,
    # added_target_information, missing_source_information, per_conj)
    return (norm_distance, norm_similar_one, norm_similar_pairs, per_conj, added_target_information,
            missing_source_information)


def overlap_of_feature_lists(source_list, target_list):
    """
    Comparing the information of the target and source lists, looking only on the overlap and not
    on the order (can be added later).
    :param source_list: list of features (numbers or strings) of the source list.
    :param target_list: list of features (numbers or strings) of the target list.
    :return: metrics on the overlap
    """
    ## Initialization
    # min_info = 0
    unique_source_list = set(source_list)
    unique_target_list = set(target_list)

    if len(unique_target_list) > 0 and len(unique_source_list) > 0:
        conj_st = unique_source_list.intersection(unique_target_list)
        # Conjunction set between target and source.
        # normalizing
        per_conj = len(conj_st) / float(len(unique_source_list))  # Normalized by source
        missing_source_information = len(unique_source_list.difference(conj_st))
        added_target_information = len(unique_target_list.difference(conj_st))
    elif len(unique_source_list) > 0:
        per_conj = -1
        missing_source_information = len(unique_source_list)
        added_target_information = -1
    else:  # no information from the target side.
        per_conj = -1
        missing_source_information = -1
        added_target_information = len(unique_target_list)

    return(per_conj, missing_source_information, added_target_information, len(unique_source_list))
