#!/bin/bash

# disable blanking
xset s off &
xset -dpms &
xset +fp /usr/share/fonts/local
xset fp rehash
# set a mouse
xsetroot -cursor_name left_ptr &

# set the X backdrop

# a very basic one
# xsetroot -bg "#111111" -mod 3 3 &

# a shiny one
#hsetroot -fill /usr/local/share/wall.jpg &

# source the terminal colors
xrdb -merge ~/.Xresources &
sxhkd &
compton --config ~/.compton.conf &
# Ctrl-Alt-Backspace kills the X session
setxkbmap -option terminate:ctrl_alt_bksp &

# drop some shadows
# compton -bcCG -i 1.0 -e 1.0 -m 1.0  --sw-opti &
hsetroot -fill ~/pics/8.jpg &

exec dbus-launch --exit-with-session i3 #startkde
#jwm
