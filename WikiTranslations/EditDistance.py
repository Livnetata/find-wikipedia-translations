__author__ = 'Neta'


### not true: Taken from http://code.activestate.com/recipes/576874-levenshtein-distance/

def levenshtein(s1, s2):
    if len(s1) < len(s2):
        return (levenshtein(s2, s1))

    # len(s1) >= len(s2)
    if len(s2) == 0:
        return (len(s1))

    previous_row = range(len(s2) + 1)
    for i, c1 in enumerate(s1):
        current_row = [i + 1]
        for j, c2 in enumerate(s2):
            insertions = previous_row[j + 1] + 1
            # j+1 instead of j since previous_row and current_row are one character longer
            deletions = current_row[j] + 1  # than s2
            substitutions = previous_row[j] + (c1 != c2)
            current_row.append(min(insertions, deletions, substitutions))
        previous_row = current_row

    return (previous_row[-1])


def one_permutation(s1, s2):
    """
    Checks the difference between the lists taking into account only 1 permutation for each side.
    :param s1: list 1
    :param s2: list 2
    :return:the number of objects that are the same (not normalized to length of the list)
    """
    i = 0
    j = 0
    similar = 0
    len_s1 = len(s1)
    len_s2 = len(s2)

    if len_s1 > 2 and len_s2 > 2:
        while i < len_s1 - 1 and j < len_s2 - 1:
            # print((s1[i], s2[j]))
            if s1[i] == s2[j]:
                similar += 1
                i += 1
                j += 1
            elif s1[i] == s2[j + 1]:
                similar += 1
                i += 1
                j += 2
            elif s1[i + 1] == s2[j]:
                similar += 1
                i += 2
                j += 1
            elif s1[i] == s2[j - 1]:
                similar += 1
                i += 1
            elif s1[i - 1] == s2[j]:
                similar += 1
                j += 1
            else:
                i += 1
                j += 1
        if i <= len_s1 - 1 and j <= len_s2 - 1:
            if s1[i] == s2[j]:
                similar += 1
            elif s1[i] == s2[j - 1]:
                similar += 1
            elif s1[i - 1] == s2[j]:
                similar += 1
        return (similar)
    else:
        return (0)


def checking_pairs_conjunction(s1, s2):
    # adding start and end features
    s3 = ["start_string"]
    s3.extend(s1)
    s3.append("end_string")


    # adding start and end features
    s4 = ["start_string"]
    s4.extend(s2)
    s4.append("end_string")

    s1_pairs = [(s3[i], s3[i + 1]) for i in range(len(s3) - 1)]
    s2_pairs = [(s4[i], s4[i + 1]) for i in range(len(s4) - 1)]

    unique_s1_pairs = set(s1_pairs)
    unique_s2_pairs = set(s2_pairs)
    conj_st = unique_s1_pairs.intersection(
        unique_s2_pairs)  # Conjunction set between target and source.
    # per_conj = len(conj_st)/float(min(len(unique_s1_pairs), len(unique_s2_pairs))) # Normalized
    return (len(conj_st))
