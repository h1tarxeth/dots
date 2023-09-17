
selected=$(ls -1 ~/wallpaper/*.{jpg,jpeg,png} | rofi -dmenu -p "Wallpapers")

if [ "$selected" ]; then

    # ----------------------------------------------------- 
    # Set the new wallpaper
    # ----------------------------------------------------- 
    swww img $selected --transition-step 20 --transition-fps=20
    
    # ----------------------------------------------------- 
    # Send notification
    # ----------------------------------------------------- 
    notify-send "Wallpaper updated"
fi
