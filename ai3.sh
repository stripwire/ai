#!/bin/bash
useradd -m -g users -G wheel -s /bin/bash stripwire
echo PASSWD
systemctl enable dhcpcd
systemctl start dhcpcd
echo PAUSE...
sleep 15
pacman -Sy
pacman -S sudo
cd /ai
cp sudoers /etc/
pacman -S xorg xorg-xinit xterm cinnamon xed gnome-terminal bash-completion xorg-apps nemo-fileroller pulseaudio pulseaudio-alsa pavucontrol eog eog-plugins chromium unzip unrar p7zip toxcore gnome-system-monitor gnome-calculator flameshot evince mlocate antiword catdoc unrtf djvulibre id3lib mutagen python2-pychm aspell-en git calibre ttf-freefont ttf-linux-libertine ntfs-3g libmtp net-tools cinnamon-translations gparted baobab numlockx neofetch 
systemctl enable NetworkManager.service
systemctl start NetworkManager.service
cp /usr/share/xsessions/cinnamon.desktop ~/
locale-gen
#efibootmgr

