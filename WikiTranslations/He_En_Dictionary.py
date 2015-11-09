__author__ = 'Neta'

import csv
import pickle
import bz2


def build_he_en_dict(dict_file, he_rd_file, en_rd_file):
    """ building dictionaries from a csv file to connect hebrew interlinks to english interlinks.
    :param dict_file: string of the name of the dictionary file.
    :param he_rd_file: string of the name of the redirect hebrew file.
    :param en_rd_file: string of the name of the redirect english file.
    :return: a dictionary that relates the same hebrew and english pages using the english page id.
            Saves a pickle file with the dictionaries.
    """
    en_dict = {}
    he_dict = {}
    he_en_dict = {}
    en_he_dict = {}
    with open(dict_file, newline='') as csvfile:
        info = csv.reader(csvfile)
        info.__next__()
        for line in info:
            en_dict[line[3].lower()] = int(line[2])  # en_title = en_id
            he_dict[line[1].lower()] = int(line[0])  # he_title = he_id
            he_en_dict[int(line[0])] = int(line[2])  # he_id = en_id
            en_he_dict[int(line[2])] = int(line[0])  # en_id = he_id

    with open(he_rd_file, newline='') as csvfile:
        info = csv.reader(csvfile)
        info.__next__()
        for line in info:
            he_dict[line[1].lower()] = int(line[2])  # he_title = he_id

    with bz2.open(en_rd_file, 'rt') as info:
        info.readline()
        count = 0
        for line in info:
            clean_line = line.split()
            try:
                en_dict[clean_line[1].lower()] = int(clean_line[2])  # en_title = en_id
            except ValueError:
                pass
            count += 1
    print(count)
    return ([en_dict, he_dict, he_en_dict, en_he_dict])


def convert_he_title_to_en_id(he_title, he_dict, he_en_dict):
    """
    Converts page titles in hebrew to their corresponding english ids. -1 if non exists.
    :param he_title: Sting in hebrew of a page title.
    :param he_dict: Dictionary connecting he titles to their he id.
    :param he_en_dict: Dictionary connecting he ids to en ids if there are ones.
    :return: return the en id or -d none exists.
    """
    lower_title = he_title.replace(" ", "_").lower()
    he_id = he_dict.get(lower_title, -1)
    if he_id != -1:
        en_id = he_en_dict.get(he_id, -1)
        return (en_id)
    else:
        return (he_id)


def convert_en_title_to_en_id(en_title, en_dict):
    """
    Converts page titles in english to ids. -2 if non exists.
    :param en_title: Sting in English of a page title.
    :param en_dict: Dictionary connecting EN titles to their EN id.
    :return: EN id or -2 if none exists.
    """
    lower_title = en_title.replace(" ", "_").lower()
    en_id = en_dict.get(lower_title, -2)
    return (en_id)


# Creating the dictionaries

def create_dictionaries():
    """
    create the dictionaries that transform hebrew to english titles according the ids.
    :return: saves the dictionaries to a pickle object.
    """
    dict_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/HE_EN_matching.csv"
    he_rd_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_redirects.csv"
    en_rd_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/enwiki_redirects.txt.bz2"
    output_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_en_dict.p"
    [en_dict, he_dict, he_en_dict, en_he_dict] = build_he_en_dict(dict_file, he_rd_file, en_rd_file)
    pickle._dump([en_dict, he_dict, he_en_dict, en_he_dict], open(output_file, "wb"))

# create_dictionaries()
