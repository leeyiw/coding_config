#!/usr/bin/env python
# -*- coding: utf-8 -*-

import time
from datetime import datetime, timedelta
import subprocess

def main():
    with open('/proc/uptime', 'r') as f:
        line = f.readline()
        uptime = float(line.split(' ')[0])
    now = datetime.now()
    output = subprocess.check_output(['dmesg'])
    for line in output.splitlines():
        if line[0] != '[':
            continue
        old_time_str = line[1:line.find("] ")]
        old_ts = float(old_time_str)
        time_str = str(now - timedelta(seconds=(uptime - old_ts)))
        new_line = line.replace(old_time_str, time_str, 1)
        print new_line


if __name__ == "__main__":
    main()
