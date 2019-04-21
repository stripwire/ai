#!/bin/bash
cd /
loadkeys ru
setfont cyr-sun16
timedatectl set-timezone Europe/Moscow
mount /dev/sda1	/mnt				#########################################################################################################################
rm -rf /mnt/*
cp -f /ai/mirrorlist /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel
genfstab -L /mnt >> /mnt/etc/fstab
cp -rf /ai/ /mnt/
arch-chroot /mnt
