# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
from function import readyaml


class Sheet:
    __slots__ = ['path', 'ext', 'colNames']
    def __init__(self, path, suffix, colNames):
        self.colNames = colNames
        self.path = path
        if len(suffix) > 0:
            self.path = "%s.%s" % (path, suffix)

    def __str__(self):
        return "path:%s colNames:%s" % (self.path, self.colNames)
    def __repr__(self):
        return self.__str__()

def parseSheets(map, sheets = None, prefix = '', suffix = ''):
    sheets = [] if sheets is None else sheets
    if 'extension' in map:
        suffix = map['extension']
    for k, v in map.iteritems():
        if k != 'extension':
            if isinstance(v, (list, tuple)):
                sheets.append(Sheet(os.path.join(prefix, k), suffix, v))
            else:
                parseSheets(v, sheets, os.path.join(prefix, k), suffix)
    return sheets

class Config:
    __slots__ = ['langs', 'langsdir', 'outputdir', 'sheets']
    def __init__(self):
        '''
        <str> langs
        string langsdir
        string outputdir
        <{filename,colNames}> sheets
        '''
        pass

    def load(self, filename):
        data = readyaml(filename)
        # print(data)
        self.langs     = data['langs']
        self.langsdir  = data['langsdir']
        self.outputdir = data['outputdir']
        self.sheets    = parseSheets(data['sheets'])

