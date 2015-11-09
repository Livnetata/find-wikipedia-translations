__author__ = 'Neta'

import pickle
from urllib.parse import unquote
import pywikibot
from Page_Class import TranslatedPage
import csv


def organize_edit_summaries():
    """
    filter the edit summaries of the pages before the current version.
    :return: a dictionary with page ids as keys of all of the page's edit summaries.
    """
    file_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/Edit-summaries-StudySet.csv"
    pages_comments = {}
    with open(file_name, newline='') as csvfile:
        info = csv.reader(csvfile)
        comments = []
        info.__next__()
        line = info.__next__()
        current_page = line[1]
        if line[3] != "":
            comments.append(line[3])
        for line in info:
            if line[1] != current_page:
                pages_comments[int(current_page)] = comments
                comments = []
                current_page = line[1]
            if line[3] != "":
                comments.append(line[3])
        pages_comments[int(current_page)] = comments
    return (pages_comments)


def create_readable_titles():
    """   Takes a list of titles in a URL format.
    :return: write the titles to a file in a unicode format, separated by commas and linebreaks.
    """
    file_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/StudySet.txt"
    he_titles = []
    with open(file_name, 'r') as info:
        info.readline()
        for line in info.readlines():
            clean_line = line.split()
            he_titles.append(clean_line[0])

    with open("titles_list.txt", "w") as titles_output:
        titles_output.write("( ")
        for title in he_titles:
            titles_output.write("\"" + unquote(title) + "\",\n")
        titles_output.write(")")


def retrieve_talk_pages(file_name):
    """  Import from Wikipedia API the current talk pages of a list of pages. Not it use.
    :param file_name:  The list of talk pages to import.                                                                                   I
    :return: The text of the talk pages.
    """

    # Initialization
    he_title = []

    with open(file_name, 'r') as info:
        info.readline()
        for line in info.readlines():
            clean_line = line.split()
            he_title.append(clean_line[1])

    # Hebrew revisions
    he_site = pywikibot.Site("he", "wikipedia")  # The site we want to run our bot on
    he_text = [pywikibot.Page(he_site, he_title[i], ns=1).get()
               for i in range(0, len(he_title))]

    return he_text


def create_study_set():
    """  The function retrieves all of the necessary information the detect translation:
     - the hebrew and english texts from wikipedia API.
     - the text of the talk page from wikipedia API.
     - the edit summaries of the hebrew pages
    :return: all of the available data about the pages in a TranslatedPage class format.
    The function saves the information in the file /trans_pages.p.
    """

    # Initialization
    trans_pages = []
    study_set_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/StudySet.txt"
    dict_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/he_en_dict.p"

    pages_comments = organize_edit_summaries()
    (en_dict, he_dict, _, _) = pickle.load(open(dict_file, "rb"))

    with open(study_set_file, 'r') as info:
        info.readline()
        for line in info.readlines():
            clean_line = line.split()
            trans_pages.append(TranslatedPage(unquote(clean_line[0]), unquote(clean_line[2]),
                                              he_ver_id=int(clean_line[1]),
                                              en_ver_id=int(clean_line[3]),
                                              translated=int(clean_line[4])))

    # English revisions
    en_site = pywikibot.Site("en", "wikipedia")  # The site we want to run our bot on
    he_site = pywikibot.Site("he", "wikipedia")  # The site we want to run our bot on

    for i in range(0, len(trans_pages)):
        trans_pages[i].set_en_text(
            (pywikibot.Page(en_site, trans_pages[i].en_title).getOldVersion(
                trans_pages[i].get_en_ver_id()))) # Retrieving English old revision's text.
        trans_pages[i].set_he_text((
            pywikibot.Page(he_site, trans_pages[i].he_title).getOldVersion(
                trans_pages[i].get_he_ver_id()))) # Retrieving Hebrew old revision's text.
        trans_pages[i].set_en_page_id(en_dict[trans_pages[i].get_en_title()])
        trans_pages[i].set_he_page_id(he_dict[trans_pages[i].get_he_title()])
        try: # Retrieving talk pages if exist.
            trans_pages[i].set_talk_text(pywikibot.Page(he_site, trans_pages[i].he_title,
                                                        ns=1).get())
        except:
            pass
        trans_pages[i].set_current_he_page_id(pywikibot.Page(he_site, trans_pages[i].he_title)
                                              .latestRevision())
        trans_pages[i].set_current_he_text(pywikibot.Page(he_site, trans_pages[i].he_title,
                                                             ns=0).get())
        trans_pages[i].set_edit_sum(pages_comments.get(trans_pages[i].get_he_page_id(), None))

    pickle._dump(trans_pages, open(
        "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/trans_pages.p", "wb"))


create_study_set()  # creating the study set
