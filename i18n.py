# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
# require:
# pip install pyyaml
# pip install polib
# pip install openpyxl
# 
import argparse
from scripts.adapters.dataset import csvadapter
from scripts.adapters.dataset import xmladapter
from scripts.adapters.dataset import luaadapter
from scripts.adapters.dataset import exceladapter
from scripts import *


def docheck(dirs, exts, output, adaptermap):
    dirs = strsplit(dirs, sep = ',')
    exts = strsplit(exts, sep = ',')
    checker.docheck(dirs, exts, output, adaptermap)




# -------------- main ----------------
if __name__ == '__main__':
    parser = argparse.ArgumentParser(usage='%(prog)s [option] <method>',
        description='export i18n to .po\nimport i18n from .po\ncheck i18n',
        formatter_class=argparse.RawTextHelpFormatter)
    parser.add_argument('method', choices=['i', 'import', 'e', 'export', 'check'],
        help='i import: import\ne export: export\ncheck: check i18n with --checkdirs')
    parser.add_argument('-c', '--config', default = 'config.yml',
        help='config file, default: config.yml')
    parser.add_argument('--checkdirs',
        help='the path for check i18n, path1,path2,path3')
    parser.add_argument('--checkexts', default = 'xml,csv',
        help='the extension for check i18n, like xml,csv default:xml,csv')
    parser.add_argument('--checkoutput', default = 'checker.yml',
        help='output filename for check i18n')

    args = parser.parse_args()

    adaptermap = {
        "xml": xmladapter,
        "csv": csvadapter,
        "lua": luaadapter,
        "xlsx": exceladapter,
    }

    if args.method == 'check':
        if args.checkdirs is None:
            msg = 'check i18n must have params --checkdirs'
            parser.error(msg)
        docheck(args.checkdirs, args.checkexts, args.checkoutput, adaptermap)
    else:
        cfg = Config()
        cfg.load(args.config)
        # print(cfg.langs)
        # print(cfg.langsdir)
        # print(cfg.outputdir)
        # print(cfg.sheets)

        if args.method in ('i', 'import'):
            importer.doimport(cfg, adaptermap)
        elif args.method in ('e', 'export'):
            exporter.doexport(cfg, adaptermap)
    
