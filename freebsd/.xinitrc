#!/usr/local/bin/bash
#xset s off &
#xset -dpms &
#xset +fp /usr/share/fonts/local
#xset fp rehash
#xsetroot -cursor_name left_ptr &
#xrdb -merge ~/.Xresources &
#setxkbmap -option terminate:ctrl_alt_bksp &
#xsetroot -mod 3 5 -bg '#111111' -fg '#555555' &
hsetroot -fill ~/pics/mexicoflag.jpg &
compton --config ~/.config/compton.conf &
#gm &
#sxhkd &
urxvt &
emacs &
exec cwm
