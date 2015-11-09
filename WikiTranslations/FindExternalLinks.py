__author__ = 'Neta'

import re

re_external_link = u'(?<!\[)\[((?:mailto:|git://|irc://|https?://|ftp://|news://|/)[^<>\s]+)\s*.*?\]'
# a link outside of Wikipdia. Can be inserted in the text, usually in external links section but
# can be also a part of a reference.
re_citation = u'{{[Cc]it(?:ation|e [\w]+)((?:\s?\| ?[\w\-\_]+\s*\= ?[^\n]+)+)\n?}}' # a full citation
re_refrence_url = u'>{{[\w ]+(?:\s?\| ?url ?= ?)([^\s\|]+)[^\n]+}}<' # url which is part of a
# citation of a ref
_external_link = re.compile(re_external_link)
_citations = re.compile('|'.join([re_citation, re_refrence_url]))

def find_external_links(text):
    """
    The function detected external links in a text of the form of [].
    :param text: String of Wikitext.
    :return: A list of external links by order of appearance.
    """
    # links = [l.group(1) for l in _external_link.finditer(text)]
    links = []
    for l in _external_link.finditer(text):
        if l.group(1)[-1] == "/":
            links.append(l.group(1)[:-1])
        else:
            links.append((l.group(1)))
    return links


def find_citations(text):
    citations = [l.group(1) for l in _citations.finditer(text)]
    return citations


def find_references(text):
    #  <ref name="LoC">[http://www.loc.gov/about/ Library of Congress]</ref>
    # refs =
    pass


def find_links_citations(text):
    all = find_external_links((text))
    all.extend(find_citations((text)))
    return all
