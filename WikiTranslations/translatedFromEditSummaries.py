# coding=utf-8
__author__ = 'Neta'

import re


def translated_from_edit_summary(comments_list):
    """
    checks in the revision comments whether there is an indication that the page was translated.
    :param comments_list: a list of comments
    :return: a boolean indicator. True - if there is a match, False - otherwise.
    """

    # תרגום/תרגמתי/מתורגם/תורגם
    # מאמר/ויקי/דף/ערך/מקור/גירסה/גרסה
    # תרגום מאנגלית/מויקיאינגליש/מויקיאנגלית
    # שליליות: תרגמת, בוט, *, העביר, שינוי?

    reg_exp = [re.compile(r"(תרגום מאנגלית)$"),
               re.compile(r"^(תרגום מאנגלית)"),
               re.compile(r"^(מו(ו)?יקי( )?(אנגלית|אינגליש))$"),
               re.compile(r"(תרגום מו(ו)?יקי( )?(אנגלית|אינגליש))"),
               re.compile(
                   r"((תורגם|תרגום|תרגמתי)(?!.+(תורגם|תרגום|תרגמתי)).+?(מאמר|ויקי|דף|ערך|מקור|גירסה|גרסה)(?!\.).+?אנגלי)")]

    # words hurting this indication - if found than the results is False
    bad_words = ["שינוי", "r\bמכונה\b", "r\bהעביר", "r\bתרגמת\b", "r\bבוט\b", "r\*"]  # חלק?

    found = False
    # while ~found and text:

    for comment in comments_list:
        for to_find in reg_exp:  # going over all the translated examples
            ans = to_find.search(comment)
            if ans is not None:
                found = True
                break
        if found:  # if found then looking in it for bad words
            # phrase = ans.group(1)
            for bad in bad_words:
                if re.search(bad, comment) is not None:
                    found = False
                    break
        if found:  # if still found
            break

            # if is found and doesn't include bad words then returns True
            # otherwise (not found or includes bad words) then returns False
    return found
