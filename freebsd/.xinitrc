#!/bin/sh
xset +fp ~/.fonts
xset fp rehash
xrdb -merge ~/.Xresources
#musicpd --no-daemon &
#hsetroot -fill ~/pics/wall1.jpg &
exec twm #jwm
