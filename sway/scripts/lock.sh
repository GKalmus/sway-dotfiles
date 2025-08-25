#!/bin/bash
# create a temp file
img=$(mktemp /tmp/XXXXXXXXXX.png)
# Take a screenshot of current desktop
grim $img
# Pixelate the screenshot
convert $img -scale 10% -scale 1000% $img
# Lock the screen with blurred img
swaylock -e -f -u -i $img
# Remove the tmp file
rm $img
