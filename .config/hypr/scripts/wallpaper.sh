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
        wal -t -i ~/Pictures/wallpaper/$selected
        ~/.config/waybar/waybar.sh
        sleep 1
        notify-send "Colors and Wallpaper updated" "with image $selected"
    ;;

    # Randomly select wallpaper 
    *)
        wal -t -i ~/Pictures/wallpaper/
        ~/.config/waybar/waybar.sh
        sleep 1
        notify-send "Colors and Wallpaper updated " "with random image"
    ;;

esac
echo "DONE!"
