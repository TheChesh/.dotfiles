#!/usr/bin/bash

eww -c $HOME/.config/eww/bar/ open bar
feh --bg-fill $HOME/.config/bspwm/walls/firewatch.png
pgrep -x sxhkd > /dev/null || sxhkd &
picom &
exec pipewire
