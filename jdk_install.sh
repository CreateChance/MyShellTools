#########################################################################
# File Name: jdk_install.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: 2015年06月18日 星期四 10时38分35秒
#########################################################################
#!/bin/bash

update-alternatives --install /usr/bin/java java $1/bin/java 300
update-alternatives --install /usr/bin/javac javac $1/bin/javac 300
update-alternatives --install /usr/bin/javaws javaws $1/bin/javaws 300
update-alternatives --install /usr/bin/jar jar $1/bin/jar 300
update-alternatives --install /usr/bin/javadoc javadoc $1/bin/javadoc 300
# EDIT - This is needed to compile Kit Kat 4.4
update-alternatives --install /usr/bin/javap javap $1/bin/javap 300
