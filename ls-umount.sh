#!/bin/sh

mount_point=$(lsblk | tail -n +2 | grep -iv sda | grep -iv disk | awk -F' ' '{print $7}' | grep -vx '' | dmenu -i -p "Unmount:" -l 10 -fn 'Hack-9' -nb '#1c2023' -nf '#f3f4f5' -sb '#aec795' -sf '#1c2023')

o=$(umount -v $mount_point)

#if [ -z $o ]
#then
#	notify-send "umount" "$mount_point unmounted successfully"
#else
#	notify-send "umount" "$mount_point unmount failed"
#fi
