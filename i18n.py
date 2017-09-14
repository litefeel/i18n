# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
# require:
# pip install pyyaml
# pip install polib
# 
import argparse
from scripts.adapters import csvadapter
from scripts.adapters import xmladapter
from scripts import *


# -------------- main ----------------
if __name__ == '__main__':
    parser = argparse.ArgumentParser(usage='%(prog)s [option] <method>',
        description='export i18n to .po or import i18n from .po',
        formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('method', choices=['i', 'import', 'e', 'export'],
        help='i import: import\ne export: export')
    parser.add_argument('-c', '--config', default = 'config.yml',
        help='config file, default: config.yml')

    args = parser.parse_args()

    cfg = Config()
    cfg.load(args.config)
    # print(cfg.langs)
    # print(cfg.langsdir)
    # print(cfg.outputdir)
    # print(cfg.sheets)
    
    adaptermap = {
        ".xml": xmladapter,
        ".csv": csvadapter,
    }

    if args.method in ('i', 'import'):
        importer.doimport(cfg, adaptermap)
    elif args.method in ('e', 'export'):
        exporter.doexport(cfg, adaptermap)
    
