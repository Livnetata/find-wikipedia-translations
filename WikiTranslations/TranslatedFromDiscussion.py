# coding=utf-8

__author__ = 'Neta'

import re


def translated_from_discussion(talk_text):
    """
    Checks in the discussion (talk) pages whether there is an indication that the page is translated.
    :param talk_text: the text of a hebrew talk page
    :return: a boolean indicator. True - if there is a match, False - otherwise.
    """

    # add מאמר instead of ערך
    # expression that indicate that the page was translated
    reg_exp = [re.compile(r"^((== ?)?תורגם מאנגלית)", re.MULTILINE),
               re.compile(r"^(מו?ויקי ?אנגלית)", re.MULTILINE),
               re.compile(r"((הערך|המאמר).+תורגם(?!\.).+?אנגלי)"),
               re.compile(r"((תורגם|תרגום|תרגמתי)(?!.+(תורגם|תרגום|תרגמתי)).+?ויקי(?!\.).+?אנגלי)"),
               re.compile(
                   r"((תורגם|תרגום|תרגמתי)(?!.+(תורגם|תרגום|תרגמתי)).+?(ערך|מאמר)(?!\.).+?אנגלי)"),
               re.compile(r"ערך מתורגם\|מקור=אנגלית"), re.compile(r"הערך.+תורגם ?==\n(.+?אנגלי)")]
    # reg_exp.append(re.compile(r"((תורגם|תרגום|תרגמתי).+?ויקי.+?אנגלי)"))
    # reg_exp.append(re.compile(r"((תורגם|תרגום|תרגמתי).+?ערך.+?אנגלי)"))

    # words hurting this indication - if found than the results is False
    bad_words = ["חלק", "r\bגוגל\b", "מכונה", "r\bלא\b", "רישול"]  # רובו

    found = False
    # text = TalkText.readline()  # if the input is in the same string
    # while ~found and text:
    for to_find in reg_exp:  # going over all the translated examples
        ans = to_find.search(talk_text)
        if ans is not None:
            found = True
            break
    if found:  # if found then looking in it for bad words
        phrase = ans.group(1)
        for bad in bad_words:
            if re.search(bad, phrase) is not None:
                found = False
                break
    # if is found and doesn't include bad words then returns True
    # otherwise (not found or includes bad words) then returns False
    return found


def find_translated_template(text, from_lang="en"):
    """
    Searching in the talk page whether the translation template appears.
    - Should add a parameter for the wiki and a translation dictionary so it will be compatible with
    languages other than English.
    - Example:{{Translated page|de|Eva Lang|version=139175172}}
    :param text: text of the discussion page
    :param from_lang: the language code of the source page.
    :return: True if it found the template with the correct language source.
    """
    re_translated_template = 'u{{translated page ?\| ?(\w+) ?\| ?(?:2=)?([\w \-]+)[\|\w \-\=]*}}'
    _trans_template = re.compile(re_translated_template)
    for l in _trans_template.finditer(text):
        if l.group(1) == from_lang:
            return True
    return False