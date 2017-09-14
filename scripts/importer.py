# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
from function import *



def po2map(po):
    kvmap = {}
    for entry in po:
        kvmap[entry.msgid] = entry.msgstr
    return kvmap

def doimport(cfg, adaptermap):
    for lang in cfg.langs:
        pofilename = os.path.join(cfg.langsdir, lang + '.po')
        po = loadpo(pofilename)
        kvmap = po2map(po)

        for sheet in cfg.sheets:
            _, ext = os.path.splitext(sheet.path)
            adapter = adaptermap[ext]
            originPath = sheet.path
            outputPath = os.path.join(cfg.outputdir, lang, sheet.path)
            makedirs2(outputPath)
            adapter.writefile(originPath, outputPath, sheet.colNames, kvmap)
