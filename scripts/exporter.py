# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
import polib
from function import *

def mergepo(po, kmap):
    for i in xrange(0,len(po)):
        entry = po[i]
        if entry.msgid in kmap:
            kmap[entry.msgid] = False
            entry.obsolete = False
        else:
            entry.obsolete = True
    for k, v in kmap.iteritems():
        if v:
            entry = polib.POEntry(
                msgid=k,
                msgstr=u'',
                obsolete = False
            )
            po.append(entry)
    # for key in kmap.iteritems():
    #     entry = po.find(key, include_obsolete_entries = True)

def doexport(cfg, adaptermap):
    makedirs(cfg.langsdir)
    kmap = {}
    for sheet in cfg.sheets:
        # print(sheet.path)
        _, ext = os.path.splitext(sheet.path)
        adapter = adaptermap[ext]
        filename = sheet.path
        adapter.readfile(filename, sheet.colNames, kmap)

    for lang in cfg.langs:
        pofilename = os.path.join(cfg.langsdir, lang + '.po')
        po = loadpo(pofilename)
        mergepo(po, kmap.copy())
        po.save(pofilename)
