__author__ = 'Neta'

from mw.xml_dump import Iterator
import re

def revision_compression(page):
    # input: revision iterator?
    # output: a list of revisions and relevant data compressed according to the edit user.
    isBot = re.compile('([Bb]ot\d*?$)|([Bb]ot[-~])|(BOT)|(\bBot\b)|([Bb]ot[A-Z].*)')
    time_boundary = 172800 # 20 days; 60*60*24*20
    first_revision = next(page)
    first_editor_id = first_revision.contributor.id
    # ids = [first_revision.id]
    yield first_revision.id
    start_time = first_revision.timestamp
    end_time = start_time
    for revision in page:
         editor_text = revision.contributor.user_test
         if not isBot.search(editor_text):
             # editor_id = revision.contributor.id
             time = revision.timestamp
             if first_editor_id == revision.contributor.id and time-start_time <time_boundary:
                 # ids.append(revision.id)
                 yield revision.id
                 end_time = time
                 ### Should save the compressed data somehow. Maybe stop the function here.
             else:
                 start_time = time
                 end_time = time








