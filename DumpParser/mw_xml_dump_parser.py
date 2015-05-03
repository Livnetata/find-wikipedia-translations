from mw.xml_dump import Iterator
# import bz2
import gzip

# f = open('../../hewiki-20150130-pages-meta-hist-incr.xml', 'rb')
#f = bz2.BZ2File('../../hewiki-20150130-stubs-meta-hist-incr.xml.bz2', 'rb')
f = gzip.GzipFile('../../hewiki-20150130-stubs-meta-hist-incr.xml.gz', 'rb')
dump = Iterator.from_file(f)

i= 0
revs = []
for page in dump:
    print(page.id, page.namespace, page.title,)
    for revision in page:
        print(revision.id, revision.timestamp, revision.parent_id, revision.contributor.user_text)
        revs.append((revision.id, revision.timestamp))
    i +=1
    if i == 3:
        break


