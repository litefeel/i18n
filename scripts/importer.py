# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
from .function import makedirs2
from .adapters.translation import gettranslation

def doimport(cfg, adaptermap):
    translation = gettranslation(cfg.translation)
    for lang in cfg.langs:
        kvmap = translation.read(cfg.langsdir, lang)

        for sheet in cfg.sheets:
            _, ext = os.path.splitext(sheet.path)
            ext = ext[1:]
            adapter = adaptermap[ext]
            originPath = sheet.path
            outputPath = os.path.join(cfg.outputdir, lang, sheet.path)
            makedirs2(outputPath)
            adapter.writefile(originPath, outputPath, sheet.colNames, kvmap)
