#!/usr/bin/env python
#-*- coding: utf-8 -*-

import pexpect
import time

USERNAME = 'guest'
PASSWORD = 'guest_12345687'
HOST = 'leeyiw.org'

def main():
    child = pexpect.spawn('ssh -qTfnN -D 0.0.0.0:7070 %s@%s' % (USERNAME, HOST))
    child.expect('password:')
    child.sendline(PASSWORD)
    time.sleep(1)

if __name__ == '__main__':
    main()
