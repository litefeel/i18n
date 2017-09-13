# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
from function import readyaml


class Config:
    __slots__ = ['langs', 'csvmap', 'xmlmap']
    def __init__(self):
        '''
        <str> langs
        {filename,colNames} csvmap
        {filename,colNames} xmlmap
        '''
        pass

    def load(self, filename):
        data = readyaml(filename)
        print(data)
        self.langs = data['langs']
        self.csvmap = data['csv']
        # self.xmlmap = data['xml']


