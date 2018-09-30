echo "$(acpi | awk -F',' '{ print $2 }' | grep -o '[0-9][0-9][0-9]')"
