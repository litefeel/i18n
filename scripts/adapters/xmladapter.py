# -*- coding: utf-8 -*-
# 

import xml.etree.ElementTree as ET


xmldeclaration = """<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n"""

# read file
def readfile(filename, cols, kmap):
    # print(cols)
    xml = ET.parse(filename)
    root = xml.getroot()
    for col in cols:
        for colNode in root.iter(col):
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
    data = ET.tostring(root, 'utf-8')
    with open(filename2, 'wb') as f:
        f.write(xmldeclaration + data)

# filename1 = '../../xml/static_unlock.xml'
# filename2 = '../../xml/static_unlock1.xml'
# cols = [u'des', u'wave_name', u'content']
# kmap = {}
# # readfile(filename1, cols, kmap)
# # print(kmap)
# # for k, v in kmap.iteritems():
# #     print(k)
# kvmap = {}
# kvmap[ur'镜像试练'] = ur'this镜像试练xxxxxxx'
# writefile(filename1, filename2, cols, kvmap)
# with open(filename, 'rb') as f:
#     reader = csv.DictReader(f)
#     print(reader.fieldnames)
    # try:
    #     for row in reader:
    #         print row
    # except csv.Error as e:
    #     sys.exit('file %s, line %d: %s' % (filename, reader.line_num, e))
