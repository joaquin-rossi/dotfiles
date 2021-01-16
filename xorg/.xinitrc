#!/bin/sh
wallpaper
layout.sh

picom -b -f --no-fading-openclose

/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &

setxkbmap es #nodeadkeys
numlockx

nm-applet &
# udiskie -s &
volumeicon &
dunst &

exec dwm
