#!/bin/bash
source /opt/gcc-4.4.7-7215-n64-loongson/path
make ARCH=mips CROSS_COMPILE=/opt/gcc-4.4.7-7215-n64-loongson/usr/bin/mips64el-redhat-linux- -j8
