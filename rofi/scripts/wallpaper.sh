#!/bin/bash

# wallpaper folder
WALLDIR="/home/anubhav/Pictures/O/"

# thumbnail cache
CACHEDIR="$HOME/.cache/rofi-wall"

# rofi theme
ROFI_THEME="$HOME/.config/rofi/wallSelect.rasi"

mkdir -p "$CACHEDIR"

entries=""

# find wallpapers
for img in "$WALLDIR"/*.{png,jpg,jpeg,webp,gif}; do

    [ -f "$img" ] || continue

    filename=$(basename "$img")

    # thumbnail path
    thumb="$CACHEDIR/${filename}.png"

    # generate thumbnail if not exists
    if [ ! -f "$thumb" ]; then

        magick "$img[0]" \
            -strip \
            -thumbnail 700x500^ \
            -gravity center \
            -extent 700x500 \
            "$thumb"

    fi

    # rofi entry with icon
    entries+="$filename\0icon\x1f$thumb\n"

done

# open rofi
selected=$(echo -en "$entries" | rofi \
    -dmenu \
    -show-icons \
    -theme "$ROFI_THEME"
)

# exit if nothing selected
[ -z "$selected" ] && exit

# set wallpaper
bash /home/anubhav/.config/scripts/SetWallpaper.sh "$WALLDIR/$selected"
