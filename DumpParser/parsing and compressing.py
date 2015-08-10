__author__ = 'Neta'

# Libraries
from mw.xml_dump import Iterator
import bz2
import re


# import gzip

# Local functions
def revision_compression(page, is_bot, time_boundary):
    """
    # Input: page object that includes a revision iterator; first revision of the page;
    # a regex that detected bots; time boundary for the same revision.
    # Output: a list of revisions and relevant data compressed according to the editor user.
    """

    revs = []
    real_editor = False
    for first_revision in page:  # finding first revision
        if not is_bot.search(first_revision.contributor.user_text):
            real_editor = True
            break
    if real_editor:
        first_editor_id = first_revision.contributor.id
        start_time = first_revision.timestamp
        last_revision = first_revision
        for next_revision in page:  # Going over next revisions searching for the same editor.
            editor_text = next_revision.contributor.user_text
            # Skipping bots
            if is_bot.search(editor_text):
                pass
            # The next revision is written by the same user.
            elif (first_editor_id == next_revision.contributor.id) \
                    and (next_revision.timestamp - start_time < time_boundary):

                last_revision = next_revision
                # saving some of the characteristics of this revision
            # The next revision is written by a different user.
            else:
                # Adding previous compressed revision to the stack.
                revs.append((page.id, first_editor_id, first_revision.id, last_revision.id,
                             start_time, last_revision.timestamp))
                # Moving on to new editor (not a bot) and revision
                first_revision = next_revision
                first_editor_id = first_revision.contributor.id
                start_time = first_revision.timestamp
                last_revision = first_revision
        # Saving last compressed revision.
        revs.append((page.id, first_editor_id, first_revision.id, last_revision.id,
                     start_time, last_revision.timestamp))
    return revs


def page_iteration(dump, is_bot, time_boundary):
    """
    
    :type dump: page iteration
    """
    i = 0
    revs = []
    for page in dump:
        if page.namespace == 0:
            revs.append(revision_compression(page, is_bot, time_boundary))
            i += 1
            if i == 10:
                return revs


# Initialization
is_bot = re.compile('([Bb]ot\d*?$)|([Bb]ot[-~])|(BOT)|(\bBot\b)|([Bb]ot[A-Z].*)')
time_boundary = 172800  # 20 days; 60*60*24*20

# reading the compressed dump
# f = open('../../hewiki-20150130-pages-meta-hist-incr.xml', 'rb')
# f = gzip.GzipFile('../../hewiki-20150130-stubs-meta-hist-incr.xml.gz', 'rb')
f = bz2.BZ2File('../../ngwiki-20150314-pages-meta-history.xml.bz2', 'rb')
dump = Iterator.from_file(f)
revs = page_iteration(dump, is_bot, time_boundary)
