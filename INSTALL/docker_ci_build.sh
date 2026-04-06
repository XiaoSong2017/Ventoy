#!/bin/sh

VTOY_PATH=$PWD/..

date +"%Y/%m/%d %H:%M:%S"
echo downloading environment ...

cp /root/下载/dietlibc-0.34.tar.xz $VTOY_PATH/DOC/
cp /root/下载/musl-1.2.1.tar.gz $VTOY_PATH/DOC/
cp /root/下载/grub-2.04.tar.xz $VTOY_PATH/GRUB2/
cp /root/下载/edk2-edk2-stable201911.zip $VTOY_PATH/EDK2/
cp /root/下载/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu.tar.xz /opt/
cp /root/下载/aarch64--uclibc--stable-2020.08-1.tar.bz2 /opt/
cp /root/下载/mips-loongson-gcc7.3-2019.06-29-linux-gnu.tar.gz /opt/

date +"%Y/%m/%d %H:%M:%S"
echo downloading environment finish...

sh all_in_one.sh CI
