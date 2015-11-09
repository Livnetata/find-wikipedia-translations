__author__ = 'Neta'

from translatedFromEditSummaries import translated_from_edit_summary


def check_first_edit_summaries(pages_input):
    id_status = []
    count_translated = 0
    count_not_empty = 0
    # count_pages = 0
    with open(pages_input, 'r') as pages_info:
        pages_info.readline()
        for line in pages_info.readlines():
            page = line.split("\t")
            comment = page[2]
            if comment is not "":
                count_not_empty += 1
                translated = translated_from_edit_summary(comment)
            id_status.append((page[0], page[1], translated))
            if translated:
                count_translated += 1
                # count_pages += 1
    pages_info.close()
    total_pages = ((len(id_status), count_translated, count_translated / float(len(id_status)),
                    count_not_empty, count_translated / float(count_not_empty)))
    return (id_status, total_pages)


def write_result(output_file, pages_status, total_pages):
    with open(output_file, "w") as pages_output:
        pages_output.write('\t'.join(("page_id", "page_title", "translated")) + '\n')
        for page in pages_status:
            pages_output.write('\t'.join(str(s) for s in page) + '\n')
        pages_output.write("\ntotal pages: " + str(total_pages[0]) + "\ntotal translated pages: "
                           + str(total_pages[1]))
        pages_output.write("\npercentage of translated pages: " + str(total_pages[2]))
        pages_output.write("\ntotal comments that are not empty: " + str(
            total_pages[3]) + "\ntotal translated pages from not empty comments: "
                           + str(total_pages[4]))

        # pages_output.close()


input_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/hebrew_edits.txt"
output_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/hebrew-result.txt"
(pages_info, total_pages) = check_first_edit_summaries(input_file)
write_result(output_file, pages_info, total_pages)
