#!/bin/bash

# Set wallpaper
feh --bg-scale ~/Pictures/plants.png &

# Start Picom (for transparency and compositing)
picom &

# Adjust screen colour temperature with Redshift
redshift -O 3600 &
