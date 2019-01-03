#!/bin/sh

lsblk | tail -n +2 | grep -iv sda | grep -iv disk | awk -F' ' '{print $7}' | grep -vx ''
