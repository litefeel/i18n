#!/usr/bin/env python3
#-----------------------------------------------------------------------------
# Copyright (c) 2013-2017, PyInstaller Development Team.
#
# Distributed under the terms of the GNU General Public License with exception
# for distributing bootloader.
#
# The full license is in the file COPYING.txt, distributed with this software.
#-----------------------------------------------------------------------------

# This utility is primary meant to be used when i18n is not
# installed, eg. when be run by a git checkout.

from litefeel.i18n.__main__ import run
run(["export", "-c", "test/config.yml", '-r', 'test'])
