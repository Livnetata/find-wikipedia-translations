__author__ = 'Neta'

import re
import pickle


def find_numbers_from_file(input_file):

    numbers = []
    with open(input_file, 'rb') as text_file:
        for line in text_file.readlines():
            if (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (line[:2] != "[["):
                line = re.sub("[s%\.:\(\)\[\]\|\-\\\]", " ", line)
                line = re.sub(",", "", line)
                numbers.extend([int(s) for s in line.split() if s.isdigit()])
    return numbers

def find_numbers_from_text(input_text):

    numbers = []
    for line in input_text.splitlines():
        if len(line)>2:
            if (line[0] != "&") and (line[0] != "|") and (line[:2] != "{{") and (line[:2] != "[["):
                line = re.sub("[s%\.:\(\)\[\]\|\-\\\]", " ", line)
                line = re.sub(",", "", line)
                numbers.extend([int(s) for s in line.split() if s.isdigit()])
    return numbers

# input_file = "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/Datasets/english_example_text"
# result  = find_numbers_from_file(input_file)

input_data = pickle.load( open( "/Users/Neta/Documents/Wikipedia/find-wikipedia-translations/DumpParser/API/en_he.pkl", "rb" ) )
result = [find_numbers_from_text(input_data[i]) for i in range(0,len(input_data))]
print(result)