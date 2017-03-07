#########################################################################
# File Name: jdk_man.sh
# Author: Baniel Gao
# mail: createchance@163.com
# Created Time: 2015年06月26日 星期五 14时10分59秒
#########################################################################
#!/bin/bash

case "$1" in
	"install")
		update-alternatives --install /usr/bin/java java $1/bin/java 300
		update-alternatives --install /usr/bin/javac javac $1/bin/javac 300
		update-alternatives --install /usr/bin/javaws javaws $1/bin/javaws 300
		update-alternatives --install /usr/bin/jar jar $1/bin/jar 300
		update-alternatives --install /usr/bin/javadoc javadoc $1/bin/javadoc 300
		# EDIT - This is needed to compile Kit Kat 4.4
		update-alternatives --install /usr/bin/javap javap $1/bin/javap 300
		echo "Jdk installed!"
		;;
	"change")
		update-alternatives --config java
		update-alternatives --config javac
		update-alternatives --config javadoc
		update-alternatives --config jar
		echo "Change jdk OK!"
		echo "Now jdk info:"
		java -version
		javac -version
		;;
	*)
		echo "Usage: " $0 "install | change"
esac
