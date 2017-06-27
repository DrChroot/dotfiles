#!/bin/sh
if [ $(id -u) -ne 0 ]; then
	echo "needs to be run as root"
	exit 1
fi
for i in `cat pkglist` ; do pkg_add $i ; done
