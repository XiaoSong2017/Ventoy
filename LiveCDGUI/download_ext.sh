#!/bin/bash

date +"%Y/%m/%d %H:%M:%S"
echo downloading EXT files ...

cp /root/下载/Porteus-Kiosk-5.2.0-x86_64.iso ./EXT/
cp /root/下载/06-fonts.xzm ./EXT/

[ -d ./__tmp__ ] && rm -rf ./__tmp__
mkdir __tmp__

mount ./EXT/Porteus-Kiosk-5.2.0-x86_64.iso ./__tmp__
cp -a ./__tmp__/boot/vmlinuz   ./EXT/
cp -a ./__tmp__/boot/initrd.xz ./EXT/
cp -a ./__tmp__/xzm/* ./EXT/

umount ./__tmp__
rm -rf ./__tmp__
rm -f ./EXT/Porteus-Kiosk-5.2.0-x86_64.iso

date +"%Y/%m/%d %H:%M:%S"
echo downloading EXT files finish ...

