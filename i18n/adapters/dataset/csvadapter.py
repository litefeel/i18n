# -*- coding: utf-8 -*-
# 
import csv
from ... import isascii

def readfile(filename, cols, kmap):
    with open(filename, 'r', encoding = 'gbk') as f:
        reader = csv.DictReader(f)
        # print(reader.fieldnames)
        # print(cols)
        for row in reader:
            for col in cols:
                s = row[col]
                if s:
                    kmap[s] = True
            # print(row['first_name'], row['last_name'])

# wite file1 to file2
def writefile(filename1, filename2, cols, kvmap):
    with open(filename1, 'r', encoding = 'gbk') as f1:
        with open(filename2, 'w', encoding = 'gbk') as f2:
            reader = csv.DictReader(f1)
            writer = csv.DictWriter(f2, fieldnames = reader.fieldnames)
            writer.writeheader()
            for row in reader:
                for col in cols:
                    key = row[col]
                    if key in kvmap:
                        row[col] = kvmap[key]
                        if kvmap[key]:
                            print(kvmap[key])
                # print(row)
                writer.writerow(row)

def checkcols(filename):
    map = {}
    cols = []
    with open(filename, 'r', encoding = 'gbk') as f:
        reader = csv.DictReader(f)
        for row in reader:
            for k, v in row.items():
                if k not in map:
                    if not isascii(v):
                        map[k] = True
                        cols.append(k)

    return cols

# filename1 = '../../csv/tawords.csv'
# filename2 = '../../csv/tawords1.csv'
# cols = [ur'英雄']
# kmap = {}
# readfile(filename1, cols, kmap)
# # print(kmap)
# for k, v in kmap.items():
#     print(k)
# kvmap = {}
# kvmap[ur'克洛斯'] = ur'的发顺丰的'
# writefile(filename1, filename2, cols, kvmap)
# 
# cols = checkcols(filename1)
# print('-------- checkcols -------')
# for c in cols:
#     print(c)
# 
# with open(filename, 'r') as f:
#     reader = csv.DictReader(f)
#     print(reader.fieldnames)
    # try:
    #     for row in reader:
    #         print row
    # except csv.Error as e:
    #     sys.exit('file %s, line %d: %s' % (filename, reader.line_num, e))
