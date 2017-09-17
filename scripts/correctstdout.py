# -*- coding: utf-8 -*-
# 
import sys
import codecs
import locale

"""
on some console, you got UnicodeEncodeError when print some unicode string.
like fllowing error:
UnicodeEncodeError: 'charmap' codec can't encode characters in position 39-40: character maps to <undefined>

now, you can print any unicode string on any console.
"""
def correct_stdout():
    if sys.stdout.encoding.upper() != 'UTF-8':
        encoding = sys.stdout.encoding or locale.getpreferredencoding()
        try:
            encoder = codecs.getwriter(encoding)
        except LookupError:
            # sys.stdout.write("Warning: unknown encoding %s specified in locale().\n" % encoding)
            encoder = codecs.getwriter('UTF-8')
        # if encoding.upper() != 'UTF-8':
        #     sys.stdout.write("Warning: stdout in %s formaat. Diacritical signs are represented in XML-coded format." % encoding)
        try:
            sys.stdout = encoder(sys.stdout.buffer, 'xmlcharrefreplace')
        except AttributeError:
            sys.stdout = encoder(sys.stdout, 'xmlcharrefreplace')

def correct_stderr():
    if sys.stderr.encoding.upper() != 'UTF-8':
        encoding = sys.stderr.encoding or locale.getpreferredencoding()
        try:
            encoder = codecs.getwriter(encoding)
        except LookupError:
            # sys.stderr.write("Warning: unknown encoding %s specified in locale().\n" % encoding)
            encoder = codecs.getwriter('UTF-8')
        # if encoding.upper() != 'UTF-8':
        #     sys.stderr.write("Warning: stderr in %s formaat. Diacritical signs are represented in XML-coded format." % encoding)
        try:
            sys.stderr = encoder(sys.stderr.buffer, 'xmlcharrefreplace')
        except AttributeError:
            sys.stderr = encoder(sys.stderr, 'xmlcharrefreplace')
