#!/bin/bash
#                _ _                              
# __      ____ _| | |_ __   __ _ _ __   ___ _ __  
# \ \ /\ / / _` | | | '_ \ / _` | '_ \ / _ \ '__| 
#  \ V  V / (_| | | | |_) | (_| | |_) |  __/ |    
#   \_/\_/ \__,_|_|_| .__/ \__,_| .__/ \___|_|    
#                   |_|         |_|               
#  
# by Stephan Raabe (2023) 
# ----------------------------------------------------- 

case $1 in

    # Load wallpaper from .cache of last session 
    "init")
        if [ -f ~/.cache/current_wallpaper.jpg ]; then
            wal -q -i ~/.cache/current_wallpaper.jpg
        else
            wal -q -i ~/Pictures/wallpaper/
        fi
    ;;

    # Select wallpaper with rofi
    "select")
        selected=$(ls -1 ~/Pictures/wallpaper/ | grep "" | rofi -dmenu -replace -config ~/.config/rofi/config-wallpaper.rasi)
        if [ ! "$selected" ]; then
            echo "No wallpaper selected"
            exit
        fi
        wal -q -i ~/Pictures/wallpaper/$selected
    ;;

    # Randomly select wallpaper 
    *)
        wal -q -i ~/Pictures/wallpaper/
    ;;

esac

# ----------------------------------------------------- 
# Load current pywal color scheme
# ----------------------------------------------------- 
source "$HOME/.cache/wal/colors.sh"
echo "Wallpaper: $wallpaper"

# ----------------------------------------------------- 
# Copy selected wallpaper into .cache folder
# ----------------------------------------------------- 
cp $wallpaper ~/.cache/current_wallpaper.jpg

# ----------------------------------------------------- 
# get wallpaper iamge name
# ----------------------------------------------------- 
newwall=$(echo $wallpaper | sed "s|$HOME/Picture/wallpaper/||g")

# ----------------------------------------------------- 
# Set the new wallpaper
# -----------------------------------------------------
transition_type="wipe"
# transition_type="outer"
# transition_type="random"

swww img $wallpaper \
    --transition-bezier .43,1.19,1,.4 \
    --transition-fps=60 \
    --transition-type=$transition_type \
    --transition-duration=0.7

~/dotfiles/chrometheme.sh

# ----------------------------------------------------- 
# Reload waybar with new colors
# -----------------------------------------------------
~/.config/waybar/waybar.sh

# ----------------------------------------------------- 
# Updating github with new background
# -----------------------------------------------------


# ----------------------------------------------------- 
# Send notification
# ----------------------------------------------------- 
sleep 1
notify-send "Colors and Wallpaper updated" "with image $newwall"

echo "DONE!"
