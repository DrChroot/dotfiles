#!/bin/bash

xset s off &
xset -dpms &
xsetroot -cursor_name left_ptr &
#hsetroot -fill ~/Pictures/wallhaven-6467.jpg -tint "#513a0c" -gamma 3 &
hsetroot -tile ~/Pictures/dark_embroidery.png -tint "#c39a9a" -gamma 2.5 &
xrdb -merge ~/.Xresources &
setxkbmap -option terminate:ctrl_alt_bksp &
xset +fp /usr/share/fonts/local
xset fprehash
light -S 80 &
compton -b &
gm &
sxhkd -c ~/.config/sxhkd/sxhkdrc >/dev/null 2>&1 &
bar -g 1179x24+48+28 -B "#C38104" -p &
./statsbar | bar -g 1175x20+50+30 -f '-jmk-neep-medium-r-normal--11-100-75-75-c-60-iso8859-1' &
exec swm
