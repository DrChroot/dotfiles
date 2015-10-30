#!/bin/bash

# disable blanking
xset s off &
xset -dpms &
xset +fp ~/.fonts
xset fp rehash
# set a mouse
xsetroot -cursor_name left_ptr &

# set the X backdrop

# a very basic one
# xsetroot -bg "#111111" -mod 3 3 &
#hsetroot -solid '#71a0b2' &
hsetroot -fill ~/pics/hh-60G.jpg &
# source the terminal colors
xrdb -merge ~/.Xresources &

# set keyboard to "us"
setxkbmap us &

# Ctrl-Alt-Backspace kills the X session
setxkbmap -option terminate:ctrl_alt_bksp &

# drop some shadows
compton -bcCG -i 1.0 -e 1.0 -m 1.0  --sw-opti &

# check if a second (external) monitor is plugged
# edit it for different backdrops: /usr/local/bin/vgascript
#vgascript &

#sleep 3s && x-terminal-emulator -geometry 85x30 -e tmux &

exec icewm
