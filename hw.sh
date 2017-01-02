#!/bin/bash
#author Jyojith George Thaliath
#please execute using command su -c (sh hw.sh) or as Root

echo "deb http://httpredir.debian.org/debian/ jessie main contrib non-free" >> /etc/apt/sources.list

apt-get -y install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms

modprobe -r b44 b43 b43legacy ssb brcmsmac bcma

modprobe wl

apt-get -y install firmware-linux-nonfree

apt-get -y install firmware-realtek






