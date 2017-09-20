#!/bin/bash
#make clean
#make mrproper
cp arch/mips/configs/loongson3_defconfig .config
#cp arch/mips/configs/loongson3a2000_defconfig .config
make ARCH=mips menuconfig

