# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
import os, os.path


def isi18n(cell, i18nKey):
    comment = cell.comment
    if comment is not None:
        text = comment.text
        return text.startswith(i18nKey)
    return False

# 
def readrow(ws, rowIdx = 1):
    col = ws.max_column
    row = ws.max_row
    datas = []
    for row in ws.iter_rows(min_row=rowIdx, max_row=rowIdx, min_col=3, max_col = col):
        for cell in row:
            datas.append(cell.value)
    return datas

def makedirs(path):
    if not os.path.isdir(path):
        os.makedirs(path)

def makedirs2(filename):
    makedirs(os.path.dirname(filename))

def readfile(filename):
    with open(filename, 'r') as f:
        return f.read()

def readyaml(filename):
    # pip install pyyaml
    import yaml
    data = readfile('config.yml')
    return yaml.load(data)

def loadpo(filename):
    import polib
    if not os.path.exists(filename):
        # makedirs2(filename)
        po = polib.POFile(encoding = 'utf-8')
        po.metadata = {
           'Project-Id-Version': '1.0',
           'Report-Msgid-Bugs-To': 'you@example.com',
           'POT-Creation-Date': '2007-10-18 14:00+0100',
           'PO-Revision-Date': '2007-10-18 14:00+0100',
           'Last-Translator': 'you <you@example.com>',
           'Language-Team': 'English <yourteam@example.com>',
           'MIME-Version': '1.0',
           'Content-Type': 'text/plain; charset=utf-8',
           'Content-Transfer-Encoding': '8bit',
        }
        po.save(filename)
    return polib.pofile(filename, encoding='utf-8')


def writefile(filename, data, mode = 'w'):
    dir = os.path.dirname(filename)
    if len(dir) > 0 and not os.path.exists(dir):
        os.makedirs(dir)
    with open(filename, mode) as f:
        f.write(data)
        f.close()

def removefile(filename):
    if os.path.isfile(filename):
        os.remove(filename)
