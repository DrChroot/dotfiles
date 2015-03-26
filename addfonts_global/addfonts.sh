#!/bin/bash
echo "lets add your font! you should already have moved it to /usr/share/local/bin."
sudo fc-cache -fs
sudo mkfontscale /usr/share/fonts/local
sudo mkfontdir /usr/share/fonts/local
xset +fp /usr/share/fonts/local
xset fp rehash
fc-cache -fv
