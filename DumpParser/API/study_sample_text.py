__author__ = 'Neta'

import pywikibot
import pickle


# import urllib.parse

def retrieve_text(file_name):
    # Initialization
    he_rev_id = []
    en_rev_id = []
    he_page_name = []
    en_page_name = []
    # translated = []

    with open(file_name, 'r') as info:
        info.readline()
        for line in info.readlines():
            clean_line = line.split()
            he_rev_id.append(int(clean_line[1]))
            he_page_name.append(clean_line[0])
            en_rev_id.append(int(clean_line[3]))
            en_page_name.append(clean_line[2])
            # translated.append(clean_line[4])

    # English revisions
    en_site = pywikibot.Site("en", "wikipedia")  # The site we want to run our bot on
    en_rev_text = [pywikibot.Page(en_site, en_page_name[i]).getOldVersion(en_rev_id[i])
                   for i in range(0, len(en_rev_id))]

    # Hebrew revisions
    he_site = pywikibot.Site("he", "wikipedia")  # The site we want to run our bot on
    # he_rev_text = [page.getOldVersion(he_id) for he_id in small_he_rev_id]
    he_rev_text = [pywikibot.Page(he_site, he_page_name[i]).getOldVersion(he_rev_id[i])
                   for i in range(0, len(he_rev_id))]

    # print(en_rev_text[4])
    # print(he_rev_text[4])
    output = open('en_he.pkl', 'wb')
    pickle.dump((he_rev_text, en_rev_text), output)
    output.close()


file_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/StudySet.txt"
