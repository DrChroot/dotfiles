#!/bin/bash

xset s off &
xset -dpms &
xsetroot -cursor_name left_ptr &
hsetroot -fill ~/Pictures/elkmount.jpg -brightness -0.3 &
xrdb -merge ~/.Xresources &
setxkbmap -option terminate:ctrl_alt_bksp &
dunst -c ~/.config/dunst/dunstrc &
xset +fp /usr/share/fonts/local
xset fprehash
compton -b &
xbindkeys &
gm &
sxhkd -c ~/.config/sxhkd/sxhkdrc >/dev/null 2>&1 &
#x-terminal-emulator -e less ~/git/gm/README &
./statsbar | bar -g 1175x20+50+30 -f '-jmk-neep-medium-r-normal--11-100-75-75-c-60-iso8859-1' &
#exec dbus-launch --exit-with-session openbox-session 
exec swm
