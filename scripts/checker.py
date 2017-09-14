# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
import polib
from function import *


def docheck(paths, exts, output, adaptermap):
    map = {}
    list = []
    print(paths)
    print(exts)
    for path in paths:
        for root, dirs, files in os.walk(path):
            for f in files:
                _, ext = os.path.splitext(f)
                ext = ext[1:]
                if ext in exts:
                    adapter = adaptermap[ext]
                    filename = os.path.join(root, f)
                    filename = filename.replace('\\', '/')
                    map[filename] = True
                    list.append({'f': filename, 'cols': adapter.checkcols(filename)})

    list.sort(key = lambda x: x['f'])
    arr = []
    for x in list:
        k,v = x['f'], x['cols']
        if len(v) > 0:
            arr.append(k)
            arr.append(':')
            arr.append(' [')
            for col in v:
                arr.append(col)
                arr.append(', ')
            arr[len(arr) - 1] = ']\n'

    s = ''.join(arr)
    print(s)
    writefile(output, s.encode('utf-8'))
    
