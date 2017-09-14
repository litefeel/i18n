# -*- coding: utf-8 -*-
# 
import csv
from .. import isascii


def decodemap(map, encoding):
    map2 = {}
    for k, v in map.iteritems():
        map2[k.decode(encoding)] = v.decode(encoding)

    return map2

def encodemap(map, encoding):
    map2 = {}
    for k, v in map.iteritems():
        map2[k.encode(encoding)] = v.encode(encoding)

    return map2


def encodelist(arr, encoding):
    return [s.encode(encoding) for s in arr]

def readfile(filename, cols, kmap):
    with open(filename, 'rb') as f:
        reader = csv.DictReader(f)
        # print(reader.fieldnames)
        # print(cols)
        for row in reader:
            row = decodemap(row, 'gbk')
            for col in cols:
                kmap[row[col]] = True
            # print(row['first_name'], row['last_name'])

# wite file1 to file2
def writefile(filename1, filename2, cols, kvmap):
    cols = encodelist(cols, 'gbk')
    kvmap = encodemap(kvmap, 'gbk')
    with open(filename1, 'rb') as f1, open(filename2, 'wb') as f2:
        reader = csv.DictReader(f1)
        writer = csv.DictWriter(f2, fieldnames = reader.fieldnames)
        writer.writeheader()
        for row in reader:
            for col in cols:
                key = row[col]
                if key in kvmap:
                    row[col] = kvmap[key]
            # print(row)
            writer.writerow(row)

def checkcols(filename):
    map = {}
    cols = []
    with open(filename, 'rb') as f:
        reader = csv.DictReader(f)
        for row in reader:
            for k, v in row.iteritems():
                if k not in map:
                    v = v.decode('gbk')
                    if not isascii(v):
                        map[k] = True
                        cols.append(k.decode('gbk'))

    return cols

# filename1 = '../../csv/tawords.csv'
# filename2 = '../../csv/tawords1.csv'
# cols = [ur'英雄']
# kmap = {}
# readfile(filename1, cols, kmap)
# # print(kmap)
# for k, v in kmap.iteritems():
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
# with open(filename, 'rb') as f:
#     reader = csv.DictReader(f)
#     print(reader.fieldnames)
    # try:
    #     for row in reader:
    #         print row
    # except csv.Error as e:
    #     sys.exit('file %s, line %d: %s' % (filename, reader.line_num, e))
