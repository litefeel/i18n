# -*- coding: utf-8 -*-
# 

import xml.etree.ElementTree as ET
from ... import isascii
from ... import writefile as wf


xmldeclaration = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n"""

# read file
def readfile(filename, cols, kmap):
    # print(cols)
    xml = ET.parse(filename)
    root = xml.getroot()
    for col in cols:
        for colNode in root.iter(col):
            if colNode.text:
                kmap[colNode.text] = True
            
# wite file1 to file2
def writefile(filename1, filename2, cols, kvmap):
    xml = ET.parse(filename1)
    root = xml.getroot()
    for col in cols:
        for colNode in root.iter(col):
            key = colNode.text
            if key in kvmap:
                colNode.text = kvmap[key]

    # xml.write(filename2)
    root.set('xmlns:xsi', 'http://www.w3.org/2001/XMLSchema-instance')
    data = ET.tostring(root, 'unicode')
    wf(filename2, xmldeclaration + data)


def checkcols(filename):
    map = {}
    cols = []
    xml = ET.parse(filename)
    root = xml.getroot()
    n = len(root)
    for node in root:
        for col in node:
            k, v = col.tag, col.text
            if v:
                if k not in map and not isascii(v):
                    map[k] = True
                    cols.append(k)
    return cols
    # for col in cols:
    #     for colNode in root.iter(col):
    #         kmap[colNode.text] = True

    # with open(filename, 'rb') as f:
    #     reader = csv.DictReader(f)
    #     for row in reader:
    #         for k, v in row.items():
    #             if k not in map:
    #                 v = v.decode('gbk')
    #                 if not isascii(v):
    #                     map[k] = True
    #                     cols.append(k.decode('gbk'))

    # return cols

# filename1 = '../../xml/static_unlock.xml'
# filename2 = '../../xml/static_unlock1.xml'
# cols = [u'des', u'wave_name', u'content']
# kmap = {}
# # readfile(filename1, cols, kmap)
# # print(kmap)
# # for k, v in kmap.items():
# #     print(k)
# kvmap = {}
# kvmap[ur'镜像试练'] = ur'this镜像试练xxxxxxx'
# writefile(filename1, filename2, cols, kvmap)
# 
# cols = checkcols(filename1)
# print('-------- checkcols -------')
# for c in cols:
#     print(c)
# 
# 
# with open(filename, 'rb') as f:
#     reader = csv.DictReader(f)
#     print(reader.fieldnames)
    # try:
    #     for row in reader:
    #         print row
    # except csv.Error as e:
    #     sys.exit('file %s, line %d: %s' % (filename, reader.line_num, e))
