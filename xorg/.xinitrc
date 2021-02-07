#!/bin/sh
. ~/.profile

mpd &
setlayout &
setbg &
picom -f --no-fading-openclose &
dunst &
mate-polkit &
setxkbmap es &
numlockx &

exec xmonad
