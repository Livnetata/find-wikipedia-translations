__author__ = 'Neta'

from mw.xml_dump import Iterator
import bz2
import re
import gzip

## initialization ##
isBot = re.compile('([Bb]ot\d*?$)|([Bb]ot[-~])|(B[oO]T)|(\bBot\b)|([Bb]ot[A-Z].*)')
time_boundary = 172800  # 20 days; 60*60*24*20

## starting iteration

# f = open('../../hewiki-20150130-pages-meta-hist-incr.xml', 'rb')
f = bz2.BZ2File('../../ngwiki-20150314-pages-meta-history.xml.bz2', 'rb')
#f = gzip.GzipFile('../../hewiki-20150130-stubs-meta-hist-incr.xml.gz', 'rb')
dump = Iterator.from_file(f)

i= 0
for page in dump:
    if page.namespace == 0:
        for first_revision in page:
            editor_text = first_revision.contributor.user_text
            print(editor_text)
            if not isBot.search(editor_text):
                break
        first_editor_id = first_revision.contributor.id
        start_time = first_revision.timestamp
        last_revision = first_revision
        for next_revision in page:
            editor_text = next_revision.contributor.user_text
            if isBot.search(editor_text):
                print("bot ", editor_text)
            elif first_editor_id == next_revision.contributor.id and next_revision.timestamp - start_time < time_boundary:
                last_revision = next_revision
                print(last_revision.id, last_revision.timestamp)
                # saving some of the characteristics of this revision
            else:
                print("1", page.id, first_editor_id, first_revision.id, last_revision.id, start_time, last_revision.timestamp)
                first_revision = next_revision
                first_editor_id = first_revision.contributor.id
                start_time = first_revision.timestamp
                last_revision = first_revision
                print(first_revision.contributor.user_text)
        print("2", page.id, first_editor_id, first_revision.id, last_revision.id, start_time, last_revision.timestamp)
        i += 1
    if i == 20:
        break