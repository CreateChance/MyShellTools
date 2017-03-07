#########################################################################
# File Name: change_gcc.sh
# Author: Baniel Gao
# mail: createchance@163.com
# Created Time: 2015年06月23日 星期二 17时50分12秒
#########################################################################
#!/bin/bash

if [ "$1" != "4.4" ] && [ "$1" != "4.8" ];then
	echo "ERROR: This system does not have gcc/g++ version" $1 "!!"
	exit 0
fi

rm /usr/bin/gcc
rm /usr/bin/g++
ln -s /usr/bin/gcc-$1 /usr/bin/gcc
ln -s /usr/bin/g++-$1 /usr/bin/g++
echo "change gcc/g++ to " $1 " !"
gcc --version
g++ --version
