#!/bin/bash

# Path to your wallpapers directory (change the name of the files so it can load your wallpapers)
wallpaper_dir="."

# Infinite loop to check the time and update the wallpaper every minute
while true; do
    # Get the current hour in 24-hour format
    hour=$(date +%H)

    # Determine which wallpaper to use based on the time
    if [ "$hour" -ge 6 ] && [ "$hour" -lt 15 ]; then
        wallpaper="$wallpaper_dir/Day.jpg"
    elif [ "$hour" -ge 15 ] && [ "$hour" -lt 18 ]; then
        wallpaper="$wallpaper_dir/Aprem.jpg"
    elif [ "$hour" -ge 18 ] && [ "$hour" -lt 19 ]; then
        wallpaper="$wallpaper_dir/Sunset.jpg"
    else
        wallpaper="$wallpaper_dir/Night.jpg"
    fi

    # Set the wallpaper using feh
    feh --bg-scale "$wallpaper"

    # Sleep for 60 seconds (1 minute) before checking again
    sleep 60
done

