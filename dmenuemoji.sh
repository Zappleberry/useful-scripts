#!/bin/sh

chosen=$(grep -v "#" ~/.emoji | dmenu -i -p "Emoji:" -l 10 -fn 'Hack-9' -nb '#1c2023' -nf '#f3f4f5' -sb '#aec795' -sf '#1c2023')

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xclip -selection clipboard
notify-send "'$c' copied to clipboard."
