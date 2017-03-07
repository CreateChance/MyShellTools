#########################################################################
# File Name: create_swap.sh
# Author: Baniel Gao
# mail: createchance@163.com
# Created Time: 2015年06月24日 星期三 13时37分29秒
#########################################################################
#!/bin/bash

#touch /opt/other/swapfile
#dd if=/dev/zero of=/opt/other/swapfile bs=1024 count=4096K
mkswap /opt/other/swapfile
swapon /opt/other/swapfile
swapon -s
