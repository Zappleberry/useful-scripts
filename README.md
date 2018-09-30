# useful-scripts

## Battery Check

Uses acpi and awk to extract battery information. There is another command in the file that does the same thing but with sed to trim off the first and last character. Both have similar execution times and I think it's because awk is taking a comewhat complex substring.

## Brightness Up/Down

Uses xrandr, grep, and awk to modify brightness. Slight variation of it is commented out. They both have similar execution times but the one with awk is more flexible with  different brightness incriments.
