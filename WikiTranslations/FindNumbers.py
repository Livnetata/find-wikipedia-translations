__author__ = 'Neta'

import re

def find_numbers_from_file(input_file):
    numbers = []
    with open(input_file, 'rb') as text_file:
        for line in text_file.readlines():
            if (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (line[:2] != "[[") \
                    and (line[0] != "!"):
                line = re.sub("[s%\.:\(\)\[\]\|\-\\\]", " ", line)
                line = re.sub(",", "", line)
                numbers.extend([int(s) for s in line.split() if s.isdigit()])
    return numbers


def find_numbers_from_text(input_text):
    numbers = []
    for line in input_text.splitlines():
        if len(line) > 2:
            if (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (line[:2] != "[["):
                line = re.sub("[s%\.:\(\)\[\]\|\-\\\]", " ", line)
                line = re.sub(",", "", line)
                numbers.extend([int(s) for s in line.split() if s.isdigit()])
    return numbers
