__author__ = 'Neta'

import os
import urllib.request, urllib.error
import re

# while not written "Dump Complete" then go to the link in the line above.
# If found:
# 	go over the file and extract the text of the form: enwiki-20150702-pages-meta-history27.xml-p039601334p040749350.bz2 to save in a list as pages.
# 	go over the file and extract the text of the form: enwiki-20150702-stub-meta-history3.xml.gz to save in a list as stubs.
# download all the files from the lists.

def find_files_to_download(lang, wiki_link, archive_link):
    '''

    finding the last complete dump from wikidumps and then finding the stub and pages files to download in an archive.
    the archive can be wikidumps. Right now it is archive.org.

    :rtype : date, list an list
    :param lang: sting
    :return: a list of the urls of the pages and stubs to download and the date of the dump.
    '''
    page_file = re.compile("(" + lang + "wiki-\d+-pages-meta-history\d*?\.xml[-\da-z]*?\.bz2)")
    stub_file = re.compile("(" + lang + "wiki-\d+-stub-meta-history\d*?\.xml[-\da-z]*?\.gz)")

    with urllib.request.urlopen(wiki_link) as response:  # going to https://dumps.wikimedia.org/enwiki #langaugewiki
        for line in reversed(list(response)):  # Searching for the last complete dump:
            date = re.search("a href=\"(\d+)", line.decode("utf-8"))
            if date is not None:
                print(date.group(1))
                if wiki_link == archive_link: # downloading for wikidumps
                    dump_link = archive_link + "/" + date.group(1)
                    [complete, pages, stubs] = wiki_urls(dump_link, page_file, stub_file)
                else:
                    dump_link = archive_link + "-" + date.group(1)
                    [complete, pages, stubs] = archive_urls(dump_link, page_file, stub_file)
                if complete:
                    break
    return date.group(1), pages, stubs

def wiki_urls(dump_link, page_file_re, stub_file_re):
    '''
    The functions finds the last complete dump in wikidumps. When found, it extracts the url for
     the pages dump and the stub dumps form the wikidumps.
    :param dump_link: URL
    :param page_file_re: Regular expression that finds the names of the pages dumps.
    :param stub_file_re: Regular expression that finds the names of the stub dumps.
    :return: The function returns the date of the dump and two list for the names of the pages and stub dumps.
    '''
    with urllib.request.urlopen(dump_link) as dump_response:
        html = dump_response.read()
        html = html.decode("utf-8")
        found_it = re.search("Dump complete", html)
        if found_it is not None:  # found the first dump that is complete.
            complete = True
            pages = page_file_re.findall(html)  # finding the pages dumps
            pages = list(set(pages))
            stubs = stub_file_re.findall(html)  # finding the stub dumps
            if len(stubs) > 2:
                stubs.pop(0)
                stubs.pop(0)
            stubs = list(set(stubs))
        else:  # did not find the dump. Will search the previous dump.
            complete = False
            pages = []
            stubs = []
        return complete, pages, stubs


def archive_urls(dump_link, page_file_re, stub_file_re):
    '''
    The functions finds the last complete dump in Wikidumps. When found, it extracts the URLs for
    the pages dump and the stub dumps form another site (Right now it is archive.org).
    :param dump_link: URL
    :param page_file_re: Regular expression the finds the names of the pages dumps.
    :param stub_file_re: Regular expression the finds the names of the stub dumps.
    :return: The function returns the date of the dump and two list for the names of the pages and stub dumps.

    '''
    try:
        with urllib.request.urlopen(dump_link) as dump_response:
            html = dump_response.read()
            html = html.decode("utf-8")
            complete = True
            pages = page_file_re.findall(html)  # finding the pages dumps
            pages = list(set(pages))
            stubs = stub_file_re.findall(html)  # finding the stub dumps
            if len(stubs) > 2:
                stubs.pop(0)
                stubs.pop(0)
            stubs = list(set(stubs))
            return complete, pages, stubs
    except urllib.error.URLError:
        complete = False
        pages = []
        stubs = []
        return complete, pages, stubs


def prepare_files_to_wget(pages, stubs, link_list, output_file_name):
    """
    The function saves in a file and the full links to download, of the pages and stubs.
    It saves it in a wget format to be used in the terminal.
    """
    with open(output_file_name, "w") as output_file:
        output_file.write("​#!/bin/bash\n")
        for line in pages:
            output_file.write("wget " + link_list + "/" + line + "\n")
        for line in stubs:
            output_file.write("wget " + link_list + "/" + line + "\n")


def prepare_files_to_txt(pages, stubs, link_list, output_file_name):
    """
    The function saves in a txt file the full links to download, of the pages and stubs.
    """
    with open(output_file_name, "w") as output_file:
        for line in pages:
            output_file.write(link_list + "/" + line + "\n")
        for line in stubs:
            output_file.write(link_list + "/" + line + "\n")


lang_list = ["en", "sv", "nl", "de", "fr", "war", "ceb", "ru", "it", "es", "vi", "pl", "ja", "pt",
             "zh", "uk", "ca", "fa", "no", "fi", "id", "ar", "sr", "cs", "ko", "sh", "hu", "ms",
             "ro", "tr", "min", "kk", "eo", "eu", "sk", "da", "bg", "lt", "he", "hr", "sl", "hy",
             "et", "uz", "vo", "gl", "simple", "nn", "hi", "el", "la", "az", "th", "oc", "ka",
             "mk", "be", "ce", "new", "ta", "tt", "ur", "pms", "tl", "cy", "te", "lv", "bs",
             "be-x-old", "mg", "ht", "br", "sq", "jv", "lb", "mr", "is", "ml", "zh-yue", "af",
             "bn", "ba", "pnb", "ga", "my", "lmo", "fy", "yo", "tg", "an", "cv", "sco", "sw", "ky",
             "ne", "io", "gu", "bpy", "scn", "nds", "ku", "ast", "qu", "gd", "als", "su", "kn",
             "pa", "am", "ckb", "ia", "nap", "bug", "mn", "bat-smg", "wa", "arz", "map-bms", "si",
             "mzn", "zh-min-nan", "yi", "fo", "sah", "bar", "vec", "sa", "nah", "os", "roa-tara",
             "hsb", "or", "li", "pam", "se", "mrj", "ilo", "mi", "co", "hif", "bcl", "mhr", "gan",
             "frr", "bo", "rue", "glk", "bh", "nds-nl", "fiu-vro", "ps", "vls", "tk", "pag", "diq",
             "xmf", "gv", "km", "sc", "csb", "hak", "kv", "zea", "crh", "vep", "zh-classical",
             "ay", "so", "dv", "nrm", "kw", "rm", "udm", "wuu", "eml", "koi", "ug", "stq", "lad",
             "lij", "fur", "szl", "mt", "as", "cbk-zam", "gn", "pcd", "pi", "gag", "ksh", "ang",
             "ie", "ace", "ext", "nv", "frp", "dsb", "kab", "mwl", "sn", "lez", "ln", "pfl", "krc",
             "haw", "pdc", "xal", "rw", "myv", "nov", "to", "kl", "arc", "cdo", "kaa", "bjn", "lo",
             "kbd", "pap", "ha", "av", "ty", "tpi", "bxr", "na", "mdf", "lbe", "jbo", "wo",
             "roa-rup", "srn", "ig", "tet", "nso", "kg", "tyv", "ab", "ltg", "sd", "zu", "za",
             "om", "chy", "tw", "rmy", "cu", "mai", "chr", "tn", "got", "bi", "pih", "rn", "sm",
             "bm", "ss", "mo", "iu", "xh", "ki", "pnt", "lg", "ts", "ee", "ak", "ti", "fj", "ks",
             "sg", "ff", "ny", "st", "ve", "cr", "dz", "ik", "tum", "ch", "ng", "ii", "cho", "mh",
             "aa", "kj", "ho", "mus", "kr", "hz", "azb", "gon", "lrc"]


#https://archive.org/download/enwiki-20150602
#https://archive.org/download/enwiki-20150602/enwiki-20150602-pages-meta-history1.xml-p000000010p000002884.7z
# lang = "cho"
lang = "fr"
wiki_link = "https://dumps.wikimedia.org/" + lang + "wiki"
archive_link = "https://archive.org/download/" + lang + "wiki"
#output_file_name = "download_" + lang + "_wget.sh"
output_file_name = "download_" + lang + ".txt"
[date, pages, stubs] = find_files_to_download(lang, wiki_link, archive_link)
prepare_files_to_txt(pages, stubs, archive_link + "-" + date, output_file_name)