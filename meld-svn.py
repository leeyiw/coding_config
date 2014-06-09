#!/usr/bin/env python
#-*- coding: utf-8 -*-
#########################################################
# (C) 2000-2014 NSFOCUS Corporation. All rights Reserved#
#########################################################

import subprocess
import sys

args = ['/usr/bin/meld', '-n']
args.extend(sys.argv[1:])
subprocess.Popen(args)
