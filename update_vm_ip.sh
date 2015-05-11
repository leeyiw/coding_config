#!/bin/bash

if [ "x$1" == "xeth0" -a "x$2" == "xup" ]; then
    FILE=/mnt/hgfs/liyiwei/ip.txt
    VM_IP=`ifconfig eth0 | grep 'inet addr:' | sed -e 's/^.*inet addr:\([0-9.]*\).*$/\1/g'`
    echo $VM_IP > $FILE
fi
