#!/bin/bash
echo "lets add your font! you should already have moved it to /usr/share/fonts/local"
sudo fc-cache -fs
sudo mkfontscale ~/.fonts
sudo mkfontdir ~/.fonts
xset +fp ~/.fonts
xset fp rehash
fc-cache -fv

#credit goes to GekkoP on the LinuxBBQ for helping me figure out a way to set fonts w/o spending hours trying to figure out what I am doing :D
#If you don't already have a dank icon font, may I suggest siji? <https://github.com/gstk/siji>
