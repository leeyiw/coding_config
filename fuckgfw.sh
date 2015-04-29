#/bin/bash

ps aux | grep '[s]sh .* guest@vpn.liyiwei.cn' | awk '{print $2}' | xargs kill -9
ssh -v -qTfnN -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -D 0.0.0.0:7070 guest@vpn.liyiwei.cn
