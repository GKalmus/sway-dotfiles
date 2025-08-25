#! /bin/bash
file_name=$(date +'%d-%m-%y-%T.png')
path=$(xdg-user-dir PICTURES)/Screenshots/$file_name
grim -g "$(slurp)" -t png $path
wl-copy < $path
