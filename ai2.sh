#!/bin/bash
cd /ai/
ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime
hwclock --systohc
cp /ai/locale.gen /etc/
cp /ai/locale.conf /etc/
cp /ai/vconsole.conf /etc/
cp /ai/hostname /etc/
cp /ai/hosts /etc/
echo PASSWD

