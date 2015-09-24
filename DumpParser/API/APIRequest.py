__author__ = 'Neta'

import pywikibot
import time, pickle
import urllib.parse

file_name = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/" \
            "hebrew_candidates2.txt"

he_rev_id = []
en_rev_id = []
he_page_name = []
en_page_name = []

with open(file_name, 'r') as info:
    line = info.readline()
    for line in info.readlines():
        clean_line = line.split()
        he_rev_id.append(int(clean_line[2]))
        he_page_name.append(clean_line[1])
        en_rev_id.append(int(clean_line[6]))
        en_page_name.append(clean_line[5])

small_he_rev_id = he_rev_id[0:10]
small_en_rev_id = en_rev_id[0:10]
small_he_page_name = he_page_name[0:10]
small_en_page_name = en_page_name[0:10]

start = time.time()

# English revisions
en_site = pywikibot.Site("en", "wikipedia")  # The site we want to run our bot on
en_rev_text = [pywikibot.Page(en_site, small_en_page_name[i]).getOldVersion(small_en_rev_id[i])
               for i in range(0, len(small_en_page_name))]

# Hebrew revisions
he_site = pywikibot.Site("he", "wikipedia")  # The site we want to run our bot on
# he_rev_text = [page.getOldVersion(he_id) for he_id in small_he_rev_id]
he_rev_text = [pywikibot.Page(he_site, small_he_page_name[i]).getOldVersion(small_he_rev_id[i])
               for i in range(0, len(small_he_page_name))]

end = time.time()
elapsed = end - start
print(elapsed)

# output = open('data.pkl', 'wb')
# pickle.dump((he_rev_text, en_rev_text), output)
# output.close()

print(en_rev_text[9])
print(he_rev_text[9])
