#!/usr/bin/env python
#-*- coding: utf-8 -*-

import pexpect
import time

USERNAME = 'guest'
PASSWORD = 'guestguest'
HOST = 'vpn.leeyiw.org'
PORT = 2222

def main():
    child = pexpect.spawn('ssh -p %d -qTfnN -D 0.0.0.0:7070 %s@%s' % (PORT, USERNAME, HOST))
    index = child.expect(['\(yes/no\)\? ', 'password: '], timeout=60)
    if index == 0:
        child.sendline('yes')
        child.expect('password:')
    child.sendline(PASSWORD)
    time.sleep(1)

if __name__ == '__main__':
    main()
