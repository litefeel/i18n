# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
import re
from .function import readyaml


class Sheet:
    __slots__ = ['path', 'ext', 'colNames']
    def __init__(self, path, colNames):
        self.colNames = colNames
        self.path = path

    def __str__(self):
        return "path:%s colNames:%s" % (self.path, self.colNames)
    def __repr__(self):
        return self.__str__()

def tryAppend(sheets, path, prefix, suffix, v):
    if len(suffix) > 0:
        path = "%s.%s" % (path, suffix)
    path = os.path.join(prefix, path)
    idx = path.find('*')
    if -1 == idx:
        sheets.append(Sheet(path, v))
    else:
        path = path.replace('\\', '/')
        pattern = re.compile(path.replace('.', '\\.').replace('*', '.*') + '$')
        parent = os.path.dirname(path[0:idx] )
        # print('pattern', pattern.pattern)
        # print('parent', parent)
        # print('path[0:idx]', path[0:idx], idx)
        for root, dirs, files in os.walk(parent):
            for file in files:
                file = '%s/%s' % (root, file)
                if pattern.match(file) is not None:
                    sheets.append(Sheet(file, v))

def parseSheets(map, sheets = None, prefix = '', suffix = ''):
    sheets = [] if sheets is None else sheets
    if 'extension' in map:
        suffix = map['extension']
    for k, v in map.iteritems():
        if k != 'extension':
            if isinstance(v, (list, tuple)) or v is None:
                tryAppend(sheets, k, prefix, suffix, v)
                # sheets.append(Sheet(os.path.join(prefix, k), suffix, v))
            else:
                parseSheets(v, sheets, os.path.join(prefix, k), suffix)
    return sheets

class Config:
    __slots__ = ['langs', 'langsdir', 'outputdir', 'sheets', 'translation']
    def __init__(self):
        '''
        <str> langs
        string langsdir
        string outputdir
        string translation
        <{filename,colNames}> sheets
        '''
        pass

    def load(self, filename):
        data = readyaml(filename)
        # print(data)
        self.langs       = data['langs']
        self.langsdir    = data['langsdir']
        self.outputdir   = data['outputdir']
        self.translation = data['translation']
        self.sheets      = parseSheets(data['sheets'])

