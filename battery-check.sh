#!/bin/sh

#echo "$(acpi | awk -F',' '{ print $2 }' | sed 's/^.//' | sed s'/.$//')"

echo "$(acpi | awk -F',' '{ print substr($2,2,length($2)-2) }')"

