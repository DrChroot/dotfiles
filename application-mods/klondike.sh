#!/bin/bash
# This script installs and sets up a basic wmutils environment on a fresh Debian install
# YMMV
sudo apt install xserver-xorg x11-xserver-utils x11-utils xinit xauth x11-xkb-utils suckless-tools rxvt-unicode-256color hsetroot build-essential
mkdir ~/.config
cd ~/src
git clone https://github.com/baskerville/sxhkd
git clone https://github.com/wmutils/core
git clone https://github.com/wmutils/opt
git clone https://github.com/wmutils/libwm
git clone https://github.com/wmutils/contrib
mkdir ~/bin
cp ~/src/contrib/*.sh ~/bin
cd libwm
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
