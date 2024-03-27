
selected=$(ls -1 ~/wallpaper/*.{jpg,jpeg,png,gif} | rofi -dmenu -p "Wallpapers")

if [ "$selected" ]; then

    # ----------------------------------------------------- 
    # Set the new wallpaper
    # ----------------------------------------------------- 
    swww img $selected --transition-fps 60 --transition-step 5 --transition-type=random 
    # ----------------------------------------------------- 
    # Send notification
    # ----------------------------------------------------- 
    notify-send "Wallpaper updated"
fi
