#!/usr/bin/env dash

# Date
date=$(date "+%a %F %R")

# CPU temp
cpu=$(sensors | grep "Package" | cut -f 1-3,5 -d " ")

# Alsa master volume
volume=$(amixer get Master | grep "Right:" | cut -f 7 -d " ")

# Battery status
battery=$(cat /sys/class/power_supply/BAT0/capacity)

# Status bar
echo "Volume:" $volume "| Battery:" $battery"% |" $date
