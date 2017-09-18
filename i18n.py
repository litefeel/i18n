#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# requed:
# https://openpyxl.readthedocs.io/en/default/
# 
# require:
# pip install pyyaml
# pip install polib
# pip install openpyxl
# 
import sys
if sys.version_info < (3, 0):
    print >>sys.stderr, 'current python version:%s' % sys.version
    print >>sys.stderr, 'please use python 3'
    exit(1)

from scripts import correctstdout
correctstdout.correct_stdout()
correctstdout.correct_stderr()

import argparse
import textwrap
from scripts.adapters.dataset import csvadapter
from scripts.adapters.dataset import xmladapter
from scripts.adapters.dataset import luaadapter
from scripts.adapters.dataset import exceladapter
from scripts import *

# version number
VERSION = '1.0'


def docheck(dirs, exts, output, adaptermap):
    dirs = strsplit(dirs, sep = ',')
    exts = strsplit(exts, sep = ',')
    checker.docheck(dirs, exts, output, adaptermap)


def import_or_export_param(parser):
    parser.add_argument('-c', '--config', default = 'config.yml',
        help='config file (default: %(default)s)')
    parser.add_argument('-r', '--root',
        help='override rootdir of config')

# -------------- main ----------------
if __name__ == '__main__':
    PROG = os.path.basename(__file__)
    parser = argparse.ArgumentParser(usage='%(prog)s <subcommand> [options] [args]',
        formatter_class=argparse.RawTextHelpFormatter, prog=PROG,
        description=textwrap.dedent("""
            export translation and import it.
            """))

    parser.add_argument('-v', '--version', action='version',
        version='%(prog)s version ' + VERSION)
    
    subparsers = parser.add_subparsers(title='subcommands',
        dest='subcommand', prog=PROG)

    # import or export
    import_parser = subparsers.add_parser('import', aliases='i',
        help='import translation to dataset',
        description='import translation to dataset')
    export_parser = subparsers.add_parser('export', aliases='e',
        help='export dataset to translation',
        description='export dataset to translation')
    import_or_export_param(import_parser)
    import_or_export_param(export_parser)

    # checker
    check_parser  = subparsers.add_parser('check',
        help='automatically detect the text to be translated',
        description='automatically detect the text to be translated')
    check_parser.add_argument('dirs',
        help='the path for check i18n, path1,path2,path3')
    check_parser.add_argument('-e', '--exts', default = 'xml,csv',
        help='the extension for check i18n (default: %(default)s)')
    check_parser.add_argument('-o', '--output', default = 'checker.yml',
        help='output filename for check i18n (default: %(default)s)')

    args = parser.parse_args()

    adaptermap = {
        "xml": xmladapter,
        "csv": csvadapter,
        "lua": luaadapter,
        "xlsx": exceladapter,
    }

    if args.subcommand == 'check':
        docheck(args.dirs, args.exts, args.output, adaptermap)
    else:
        cfg = Config()
        cfg.load(args.config, args.root)
        # print(cfg.langs)
        # print(cfg.langsdir)
        # print(cfg.outputdir)
        # print(cfg.sheets)

        if args.subcommand in ('i', 'import'):
            importer.doimport(cfg, adaptermap)
        elif args.subcommand in ('e', 'export'):
            exporter.doexport(cfg, adaptermap)
    
