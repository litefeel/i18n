# -*- coding: utf-8 -*-
# 
import csv
import re
from .. import readfile as rf
from .. import writefile as wf

#     ["dateString"] = "%s年%s月%s日",

pstr = r'"(.*)"'
pspace = r'\s*'
pattern = pspace.join(['', r'\[', pstr, r'\]', '=', pstr, ',+' ])
pattern = re.compile(pattern)


# read file
def readfile(filename, cols, kmap):
    # print(cols)
    data = rf(filename)
    # print(data)
    lines = data.splitlines()
    for line in lines:
        # print(line)
        mo = pattern.match(line)
        if mo is not None:
            s = mo.group(2)
            if s:
                kmap[s] = True
            
# wite file1 to file2
def writefile(filename1, filename2, cols, kvmap):
    data = rf(filename1)
    # print(data)
    lines = data.splitlines()
    outlines = []
    for line in lines:
        mo = pattern.match(line)
        if mo is not None:
            key = mo.group(2)
            if key in kvmap:
                key = kvmap[key]
            line = line[:mo.start(2)] + key + line[mo.end(2):]
        outlines.append(line)
    data = '\n'.join(outlines)
    # print(data)
    wf(filename2, data)


def checkcols(filename):
    return None

