#!/bin/sh

#xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i eDP-1 -A 5 | grep -i Brightness | grep -o '[0-9].*')-0.1" | bc)

xrandr --output eDP-1 --brightness $(echo "$(xrandr --verbose | grep -i eDP-1 -A 5 | grep -i Brightness | awk -F' ' '{print $2}')-0.1" | bc)
