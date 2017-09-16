# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path
import polib
from ...function import loadpo
from ...function import makedirs
from ...function import makedirs2



def po2map(po):
    kvmap = {}
    for entry in po:
        kvmap[entry.msgid] = entry.msgstr
    return kvmap

def read(langsdir, lang):
    pofilename = os.path.join(langsdir, lang + '.po')
    po = loadpo(pofilename)
    return po2map(po)

def mergepo(po, kmap):
    for i in range(0,len(po)):
        entry = po[i]
        if entry.msgid in kmap:
            kmap[entry.msgid] = False
            entry.obsolete = False
        else:
            entry.obsolete = True
    for k, v in kmap.items():
        if v:
            entry = polib.POEntry(
                msgid=k,
                msgstr='',
                obsolete = False
            )
            po.append(entry)
    # for key in kmap.items():
    #     entry = po.find(key, include_obsolete_entries = True)

def save(langsdir, lang, kmap):
    pofilename = os.path.join(langsdir, lang + '.po')
    po = loadpo(pofilename)
    mergepo(po, kmap)
    po.save(pofilename)
