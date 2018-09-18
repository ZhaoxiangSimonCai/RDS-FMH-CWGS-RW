#
# Python script for filtering large germline resulting files for certain keys
#
#   python3 AN1_EXTRACT.py ~/das/Process/Bioinformatics/tedwong/germline.csv  > ~/das/Process/Bioinformatics/tedwong/AN_1.csv
#

import sys

keys = [ "ENSG00000204209", "ENSG00000085224", "ENSG00000164362", "ENSG00000141510" ]

with open(sys.argv[1], "r") as r:
    while line in r:
        if any(x in line for x in keys):
            print(line)
