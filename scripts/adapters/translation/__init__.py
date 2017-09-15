# -*- coding: utf-8 -*-
# 

from . import po
from . import excel

def gettranslation(name):
    if 'po' == name:
        return po
    elif 'excel' == name:
        return excel
    return None
