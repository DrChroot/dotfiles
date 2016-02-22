#!/bin/bash
sudo apt install xserver-xorg x11-xserver-utils x11-utils xinit xauth x11-xkb-utils suckless-tools rxvt-unicode-256color hsetroot build-essential
mkdir ~/.config
cd ~/src
git clone https://github.com/dcat/swm
git clone https://github.com/baskerville/sxhkd
git clone https://github.com/wmutils/core
git clone https://github.com/wmutils/opt
cd swm
sudo apt install libxcb-util0-dev libxcb-keysyms1-dev
make
sudo make install
cd ../core
make
sudo make install
cd ../opt
make
sudo make install
cd ../sxhkd
make
sudo make install
cd ../
git clone https://github.com/drchroot/dotfiles
cp -rv dotfiles/linuxbbq/sxhkd ~/.config
echo "NOW EDIT YOUR .SXHKD IN .CONFIG!!!"
