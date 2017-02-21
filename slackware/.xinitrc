#!/bin/sh
xrdb -merge ~/.Xresources
#xsetroot -solid '#abacae' &
mhsetroot -center ~/pics/kerbal.jpg &
compton --config ~/.config/compton.conf &
sxhkd &
gm &
#exec ratpoison
#exec howm
#wew | focus_watcher.sh &
exec swm
