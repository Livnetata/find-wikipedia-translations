__author__ = 'Neta'

import pickle
from nltk.tokenize import word_tokenize
import numpy as np
from scipy import stats


def calculate_doc_freq(file_name):
    """
    Calculated the frequencies by dividing the count of a word in the file with the total count.
    :param file_name: a list of words and their counts in all Wikipedia documents.
    :return: the frequencies of the words in the list.
    """
    total_count = 0
    words_count = {}
    words_freq = {}
    with open(file_name, 'r') as freq_file:
        for i in range(11):  # jumping over irrelevant information
            freq_file.readline()
        for line in freq_file.readlines():
            info = line.split()
            if len(info) == 3:
                words_count[info[1]] = int(info[2])
                total_count += int(info[2])

    for key in words_count.keys():
        words_freq[key] = words_count.get(key, 0) / float(total_count)
    pickle._dump(words_freq, open(
        "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/hewiki_doc_freq.p",
        "wb"))


def text_freq(text, words_doc_freq):
    """
    Calculates counts and frequencies of words in the text that appear in the corpus.
    :param text: text.
    :param words_doc_freq: frequencies of corpus words.
    :return: frequencies of text words.
    """
    total_count = 0
    words_count = {}
    words_freq = {}
    for line in text.splitlines():
        if (len(line) > 2) and (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (
            line[0] != "!"):
            words = word_tokenize(line)
            for word in words:
                if word in words_doc_freq.keys():
                    words_count[word] = 1 + words_count.get(word, 0)

    for value in words_count.values():
        total_count += value
    for word in words_count.keys():
        words_freq[word] = words_count.get(word, 0) / float(total_count)

    return words_freq


def text_tfidf(words_freq, words_doc_freq):
    """ If a text word is twice as frequent than in the corpus than it gets 1.
    :param words_freq: frequency of text words.
    :param words_doc_freq: frequency of corpus words.
    :return: a set of text words that are more frequent than the in the baseline.
    """
    words_vec = []
    for word in words_freq.keys():
        if words_freq[word] >= 3 * words_doc_freq[word]:
            words_vec.append(word)
    return set(words_vec)


def cosine_similarity(vec1, vec2):
    """
    :param vec1: a set of words that were above threshold in text1
    :param vec2: a set of words that were above threshold in text2
    :return: the similarity between the two sets.
    """
    # print (len(vec2.intersection(vec1)), len(vec1), len(vec2))
    vec1_int_vec2 = len(vec2.intersection(vec1))
    norm_vec1 = np.sqrt(len(vec1))
    norm_vec2 = np.sqrt(len(vec2))
    return vec1_int_vec2 / (norm_vec1 * norm_vec2)


def pages_similarity(trans_pages, doc_freq):
    """ Main function to run.
    :param trans_pages: Wikiepedia pages and its coresponding data.
    :param doc_freq: corpus of words.
    :return: the average similarity of the old pages with their current version.
    """
    t_sim = []
    o_sim = []
    for page in trans_pages:
        old_vec = text_tfidf(text_freq(page.get_he_text(), doc_freq), doc_freq)
        current_vec = text_tfidf(text_freq(page.get_current_he_text(), doc_freq), doc_freq)
        old_vec = character_trigrams(page.get_he_text())
        current_vec = character_trigrams(page.get_current_he_text())

        cos_sim = cosine_similarity(old_vec, current_vec)
        # print(page.get_en_title(), page.translated, cos_sim)
        if page.translated == 1:
            t_sim.append(cos_sim)
        else:
            o_sim.append(cos_sim)
        # if cos_sim < 0.5:
        #      print(page.get_en_title(), page.translated, cos_sim)

    ks = stats.ks_2samp(t_sim, o_sim)
    print("translated pages: ", np.mean(t_sim), np.var(t_sim))
    print("not translated pages: ", np.mean(o_sim), np.var(o_sim))
    print("all: ", np.mean(t_sim+ o_sim), np.var(t_sim + o_sim))
    print(ks)


def character_trigrams(text):

    n = 3
    trigrams = []
    for line in text.splitlines():

        if (len(line) > 3) and (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (line[0] != "!"):
            for i in range(len(line)-2):
                trigrams.append(line[i:i+3])
    return set(trigrams)

# file_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/HE_frequency_list.txt"
# calculate_doc_freq(file_name)

trans_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/trans_pages.p"
trans_pages = pickle.load(open(trans_file, "rb"))
doc_freq_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/hewiki_doc_freq.p"
doc_freq = pickle.load(open(doc_freq_file, "rb"))
pages_similarity(trans_pages, doc_freq)
