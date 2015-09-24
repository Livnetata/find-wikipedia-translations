# coding=utf-8
__author__ = 'Neta'

import re

_internal_link = re.compile(u'\[\[(:?(?:[^:\]\|]+:?\s*)+?)(?:\|.*?)?\]\]')
_category_link = re.compile(
u'\[\[[category|cat]:([^:\]]*?)\]\]')  # Remember to change the word category according to the language
_lang_link = re.compile(u'\[\[([a-z\-]+):([^:\]\{\}]*?)\]\]')

_other_links = ["acronym", "advisory", "advogato", "aew", "appropedia", "aquariumwiki",
                "arborwiki", "arxiv", "atmwiki", "b", "baden", "battlestarwiki", "bcnbio",
                "beacha", "betawiki", "betawikiversity", "bluwiki", "blw", "botwiki", "boxrec",
                "brickwiki", "bugzilla", "bulba", "c", "c2", "c2find", "cache", "cellwiki",
                "centralwikia", "chapter", "chej", "choralwiki", "citizendium", "ckwiss", "cmn",
                "comixpedia", "commons", "communityscheme", "communitywiki", "comune",
                "crazyhacks", "creativecommons", "creativecommonswiki", "creatureswiki", "cxej",
                "cz", "d", "dbdump", "dcc", "dcdatabase", "dcma", "delicious", "devmo", "dict",
                "dictionary", "disinfopedia", "distributedproofreaders",
                "distributedproofreadersca", "dk", "dmoz", "dmozs", "doi", "donate", "doom_wiki",
                "download", "dpd", "drae", "dreamhost", "drumcorpswiki", "dwjwiki", "ecoreality",
                "ecxei", "elibre", "emacswiki", "encyc", "energiewiki", "englyphwiki", "enkol",
                "eokulturcentro", "epo", "esolang", "etherpad", "ethnologue", "ethnologuefamily",
                "evowiki", "exotica", u"eĉei", "fanimutationwiki", "finalfantasy", "finnix",
                "flickrphoto", "flickruser", "floralwiki", "foldoc", "forthfreak", "foundation",
                "foxwiki", "freebio", "freebsdman", "freeculturewiki", "freedomdefined",
                "freefeel", "freekiwiki", "freenode", "freesoft", "ganfyd", "gardenology",
                "gausswiki", "gentoo", "genwiki", "gerrit", "git", "globalvoices", "glossarwiki",
                "glossarywiki", "google", "googledefine", "googlegroups", "greatlakeswiki",
                "guildwarswiki", "guildwiki", "gutenberg", "gutenbergwiki", "h2wiki",
                "hackerspaces", "hammondwiki", "hdl", "heroeswiki", "hrfwiki", "hrwiki", "hupwiki",
                "iarchive", "imdbcharacter", "imdbcompany", "imdbname", "imdbtitle", "incubator",
                "infosecpedia", "infosphere", "irc", "ircrc", "iso639-3", "issn", "iuridictum",
                "jaglyphwiki", "javanet", "javapedia", "jefo", "jerseydatabase", "jira", "jp",
                "jspwiki", "jstor", "kamelo", "karlsruhe", "kinowiki", "kmwiki", "komicawiki",
                "kontuwiki", "koslarwiki", "kpopwiki", "labsconsole", "libreplanet",
                "linguistlist", "linuxwiki", "linuxwikide", "liswiki", "literateprograms",
                "livepedia", "localwiki", "lojban", "lostpedia", "lqwiki", "luxo", "m", "mail",
                "mailarchive", "mariowiki", "marveldatabase", "meatball", "mediawikiwiki",
                "mediazilla", "memoryalpha", "meta", "metawiki", "metawikimedia", "metawikipedia",
                "metawikisearch", "mineralienatlas", "minnan", "moinmoin", "monstropedia",
                "mosapedia", "mozcom", "mozillawiki", "mozillazinekb", "musicbrainz", "mw", "mwod",
                "mwot", "n", "nara", "nkcells", "nosmoke", "nost", "nostalgia", "oeis",
                "oldwikisource", "olpc", "onelook", "openfacts", "openlibrary", "openstreetmap",
                "openwetware", "openwiki", "opera7wiki", "organicdesign", "orthodoxwiki",
                "osmwiki", "otrs", "otrswiki", "ourmedia", "outreach", "outreachwiki", "owasp",
                "panawiki", "patwiki", "personaltelco", "phab", "phabricator", "phpwiki", "phwiki",
                "planetmath", "pmeg", "proofwiki", "psycle", "pyrev", "pythoninfo", "pythonwiki",
                "pywiki", "q", "quality", "quarry", "rcirc", "reuterswiki", "rev", "revo", "rfc",
                "rheinneckar", "robowiki", "rowiki", "rt", "rtfm", "s", "s23wiki", "scholar",
                "schoolswp", "scores", "scoutwiki", "scramble", "seapig", "seattlewiki",
                "seattlewireless", "sector001", "securewikidc", "semantic-mw", "senseislibrary",
                "42258", "sharemap", "silcode", "slashdot", "slwiki", "sourceforge", "spcom",
                "species", "squeak", "stats", "stewardry", "strategy", "strategywiki", "sulutil",
                "svn", "swinbrain", "swtrain", "tabwiki", "tclerswiki", "technorati", "tenwiki",
                "test2wiki", "testwiki", "testwikidata", "tfwiki", "thelemapedia", "theopedia",
                "thinkwiki", "tibiawiki", "ticket", "tmbw", "tmnet", "tmwiki", "toollabs", "tools",
                "translatewiki", "tswiki", "tviv", "tvtropes", "twiki", "tyvawiki", "uncyclopedia",
                "unihan", "unreal", "urbandict", "usability", "usej", "usemod", "v", "viaf",
                "vinismo", "vkol", "vlos", "voipinfo", "voy", "w", "werelate", "wg", "wikia",
                "wikiapiary", "wikiasite", "wikibooks", "wikichristian", "wikicities", "wikicity",
                "wikidata", "wikif1", "wikifur", "wikihow", "wikiindex", "wikilemon", "wikilivres",
                "wikilivresru", "wikimac-de", "wikimedia", "wikinews", "wikinfo", "wikinvest",
                "wikiotics", "wikipedia", "wikipediawikipedia", "wikiquote", "wikiskripta",
                "wikisophia", "wikisource", "wikispecies", "wikispot", "wikitech", "wikiti",
                "wikitree", "wikiversity", "wikivoyage", "wikiwikiweb", "wikt", "wiktionary",
                "wipipedia", "wlug", "wm2005", "wm2006", "wm2007", "wm2008", "wm2009", "wm2010",
                "wm2011", "wm2012", "wm2013", "wm2014", "wm2015", "wm2016", "wmania", "wmar",
                "wmau", "wmbd", "wmbe", "wmbr", "wmca", "wmch", "wmcl", "wmcn", "wmco", "wmcz",
                "wmdc", "wmde", "wmdeblog", "wmdk", "wmee", "wmes", "wmet", "wmf", "wmfblog",
                "wmfi", "wmfr", "wmhk", "wmhu", "wmid", "wmil", "wmin", "wmit", "wmke", "wmmk",
                "wmmx", "wmnl", "wmno", "wmnyc", "wmpa-us", "wmph", "wmpl", "wmpt", "wmrs", "wmru",
                "wmse", "wmsk", "wmteam", "wmtr", "wmtw", "wmua", "wmuk", "wmve", "wmza",
                "wookieepedia", "wowwiki", "wqy", "wurmpedia", "zh-cfr", "zrhwiki", "zum", "zwiki",
                "ĉej", "docbook", "ppr", "imdb", "shoutwiki", "sourcewatch", "tejo", "uea",
                "webseitzwiki", "talk", "help", "extentions", "special", "user", "template", "portal",
                "book", "draft", "mediawiki", "education program", "timedtext", "module", "topic",
                "project", "wp", "wt", "wikipedia talk", "project talk", "file talk", "h"]

_lang_list = ["en", "sv", "nl", "de", "fr", "war", "ceb", "ru", "it", "es", "vi", "pl", "ja", "pt",
              "zh", "uk", "ca", "fa", "no", "fi", "id", "ar", "sr", "cs", "ko", "sh", "hu", "ms",
              "ro", "tr", "min", "kk", "eo", "eu", "sk", "da", "bg", "lt", "he", "hr", "sl", "hy",
              "et", "uz", "vo", "gl", "simple", "nn", "hi", "el", "la", "az", "th", "oc", "ka",
              "mk", "be", "ce", "new", "ta", "tt", "ur", "pms", "tl", "cy", "te", "lv", "bs",
              "be-x-old", "mg", "ht", "br", "sq", "jv", "lb", "mr", "is", "ml", "zh-yue", "af",
              "bn", "ba", "pnb", "ga", "my", "lmo", "fy", "yo", "tg", "an", "cv", "sco", "sw",
              "ky", "ne", "io", "gu", "bpy", "scn", "nds", "ku", "ast", "qu", "gd", "als", "su",
              "kn", "pa", "am", "ckb", "ia", "nap", "bug", "mn", "bat-smg", "wa", "arz", "map-bms",
              "si", "mzn", "zh-min-nan", "yi", "fo", "sah", "bar", "vec", "sa", "nah", "os",
              "roa-tara", "hsb", "or", "li", "pam", "se", "mrj", "ilo", "mi", "co", "hif", "bcl",
              "mhr", "gan", "frr", "bo", "rue", "glk", "bh", "nds-nl", "fiu-vro", "ps", "vls",
              "tk", "pag", "diq", "xmf", "gv", "km", "sc", "csb", "hak", "kv", "zea", "crh", "vep",
              "zh-classical", "ay", "so", "dv", "nrm", "kw", "rm", "udm", "wuu", "eml", "koi",
              "ug", "stq", "lad", "lij", "fur", "szl", "mt", "as", "cbk-zam", "gn", "pcd", "pi",
              "gag", "ksh", "ang", "ie", "ace", "ext", "nv", "frp", "dsb", "kab", "mwl", "sn",
              "lez", "ln", "pfl", "krc", "haw", "pdc", "xal", "rw", "myv", "nov", "to", "kl",
              "arc", "cdo", "kaa", "bjn", "lo", "kbd", "pap", "ha", "av", "ty", "tpi", "bxr", "na",
              "mdf", "lbe", "jbo", "wo", "roa-rup", "srn", "ig", "tet", "nso", "kg", "tyv", "ab",
              "ltg", "sd", "zu", "za", "om", "chy", "tw", "rmy", "cu", "mai", "chr", "tn", "got",
              "bi", "pih", "rn", "sm", "bm", "ss", "mo", "iu", "xh", "ki", "pnt", "lg", "ts", "ee",
              "ak", "ti", "fj", "ks", "sg", "ff", "ny", "st", "ve", "cr", "dz", "ik", "tum", "ch",
              "ng", "ii", "cho", "mh", "aa", "kj", "ho", "mus", "kr", "hz", "azb", "gon", "lrc"]

en_he_dic = {"media":"מדיה", "special": "מיוחד", "talk":"שיחה", "user":"משתמש",
             "user_talk":"שיחת משתמש", "file":"קובץ","file_talk":"שיחת קובץ", "template":"תבנית",
             "template_talk":"שיחת תבנית", "category":"קטגוריה", "category_talk":"שיחת קטגוריה",
             "wikipeida":"ויקיפדיה", "wikipedia_talk":"שיחת ויקיפדיה", "help":"עזרה",
             "help_talk":"שיחת עזרה", "help__talk":"שיחת עזרה", "Books":"ספר", "draft":"טיוטה",
             "mediawiki":"מדיה ויקי", "mediawiki_talk":"שיחת מדיה ויקי", "image":"תמונה",
             "portal":"פורטל"}

_file_media_links = ["file", "media", "image", en_he_dic.get("file", en_he_dic.get("media"))]


def find_interlinks(text):
    """
    The function detected interlinks in a text.
    We are starting from the dirtiest way possible.
    Importantly, there are many types of links that use the same markup.
    We wish to divide them into smaller groups: interlinks (to main namespace and others),
    langlinks, media and file, Category.
    Taking care of the regular cases:
        [[x]] -> (None, 'x')
        [[type:x]] -> ('type','x')
        [[:type:x]] -> (':type','x')
    :param text: String of wikitext.
    :return: A list for each group of links by order of appearance. It saves duplicates.
    """
    langlinks = []
    inlinks = []
    otherlinks = []
    categories = []
    medialinks = []
    links = _internal_link.finditer(text)
    for link_text in links:
        link = link_text.group(1)
        num_colon = link.count(":")
        if num_colon == 0:
            inlinks.append(link)
        elif num_colon > 1:
            otherlinks.append(link)
        else:  # num_colon == 1
            colon_pos = link.find(":")
            link_type = link[:colon_pos]
            if link_type == "category" or link_type == "cat" or link_type ==  en_he_dic.get("category"):
                categories.append(link[colon_pos + 1:])
            elif link_type in _file_media_links:
                medialinks.append(link[colon_pos + 1:])
            elif link_type in _lang_list:
                # langlinks.append((link_type, link[colon_pos + 1:]))
                langlinks.append(link)
            else:
                otherlinks.append(link)
    return inlinks, otherlinks, langlinks, categories, medialinks


def find_categories(text):
    """
    The function detected categories in a text of the form of [[category:pagename]].
    Remember to change the word category according to the language.
    :param text: String of Wikitext.
    :return: A list of interlinks  by order of appearance.
    """
    return _category_link.findall(text)


def find_language_links(text):
    """
    The function detected language links in a text of the form of [[language prefix:pagename]].
    We are starting from the dirtiest way possible.
    :param text: String of Wikitext.
    :return: A list of interlinks  by order of appearance.
    """
    langlinks = []
    links = _lang_link.findall(text)
    for link_text in links:
        link = link_text.group(0)
        colon_pos = link.find(":")
        link_type = link[:colon_pos]
        if link_type in _lang_list:
            langlinks.append((link_type, link[colon_pos + 1:]))
    return langlinks

def print_links(inlinks, otherlinks, langlinks, categories, medialinks, output_file):
    with open(output_file, "w") as links_output:
        links_output.write('inlinks:\n')
        for link in inlinks:
            links_output.write(link + '\t')
        links_output.write('\nother links:\n')
        for link in otherlinks:
            links_output.write(link + '\t')
        links_output.write('\nlanglinks:\n')
        for link in langlinks:
            links_output.write(link + '\t')
        links_output.write('\ncategories:\n')
        for link in categories:
            links_output.write(link + '\t')
        links_output.write('\nmedia links:\n')
        for link in medialinks:
            links_output.write(link + '\t')


input_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/english_example_text"
output_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/example_links.txt"

text_file  = open(input_file, 'rb')
text = text_file.read()
text_file.close()
text = text.lower()
# text = text.decode("utf-8")
(inlinks, otherlinks, langlinks, categories, medialinks) = find_interlinks(text)
print_links(inlinks, otherlinks, langlinks, categories, medialinks, output_file)



