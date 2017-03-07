#########################################################################
# File Name: restart_sogou.sh
# Author: Baniel Gao
# mail: createchance@163.com
# Created Time: Mon 25 Jul 2016 01:50:07 PM CST
#########################################################################
#!/bin/bash

pidof fcitx | xargs kill
pidof sogou-qimpanel | xargs kill
nohup fcitx  1>/dev/null 2>/dev/null &
nohup sogou-qimpanel  1>/dev/null 2>/dev/null &