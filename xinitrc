#!/bin/bash

# disable blanking
xset s off &
xset -dpms &
xset +fp /usr/share/fonts/local
xset fp rehash

# Xft settings
Xft.dpi:        96
Xft.antialias:  true
Xft.rgba:       rgb
Xft.hinting:    true
Xft.hintstyle:  hintslight

# set a mouse
xsetroot -cursor_name left_ptr &

# set the X backdrop
hsetroot -fill ~/pics/spaced_blue.jpg &

# source the terminal colors
xrdb -merge ~/.Xresources &

# Ctrl-Alt-Backspace kills the X session
setxkbmap -option terminate:ctrl_alt_bksp &

# notifications
dunst -c ~/.config/dunst/dunstrc &
# desktop management
gm &
#eyecandy
compton &
# keybindings
sxhkd -c ~/.config/sxhkd/sxhkdrc >/dev/null 2>&1 &
#wm
exec swm
#exec dbus-launch --exit-with-session openbox-session
