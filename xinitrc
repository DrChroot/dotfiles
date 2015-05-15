#!/bin/bash

xset s off &
xset -dpms &
xset +fp /usr/share/fonts/local
xset fp rehash
xsetroot -cursor_name left_ptr &
#hsetroot -fill ~/pics/General/wallhaven-106821.jpg &
hsetroot -solid "#b26262" &
xrdb -merge ~/.Xresources &
setxkbmap -option terminate:ctrl_alt_bksp &
#compton -bcCG -i 1.0 -e 1.0 -m 1.0  --sw-opti &
compton --config ~/.compton.conf &
sxhkd &
gm &
exec swm #jwm
