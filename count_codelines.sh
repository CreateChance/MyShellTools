#########################################################################
# File Name: count_codelines.sh
# Author: Baniel Gao
# mail: createchance@163.com
# Created Time: 2015年06月26日 星期五 17时56分44秒
#########################################################################
#!/bin/bash

if [ "$1" = "" ];then
	echo "Useage: " $0 "path"
	exit 0
fi

find $1 -regextype posix-extended -regex ".*\.(java|h|c|cpp|aidl|php|go)" | xargs wc -l | sort -n

