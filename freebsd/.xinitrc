#!/bin/sh
xset +fp /usr/share/fonts/local
xset fp rehash
xrdb -merge ~/.Xresources &
sxhkd -c ~/.sxhkdrc &
compton --config ~/.compton.conf &
#xsetroot -mod 8 8 -bg '#132132' -fg '#333333' &
hsetroot -fill ~/pics/unsplash1.jpg &
sleep 3 && urxvt &
exec swm


