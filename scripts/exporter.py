# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
import polib
from .function import *
from .adapters.translation import gettranslation

def doexport(cfg, adaptermap):
    makedirs(cfg.langsdir)
    kmap = {}
    
    for sheet in cfg.sheets:
        # print(sheet.path)
        _, ext = os.path.splitext(sheet.path)
        ext = ext[1:]
        adapter = adaptermap[ext]
        filename = sheet.path
        adapter.readfile(filename, sheet.colNames, kmap)

    translation = gettranslation(cfg.translation)
    for lang in cfg.langs:
        translation.save(cfg.langsdir, lang, kmap.copy())
        
