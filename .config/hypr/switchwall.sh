selected=$(ls -1 ~/wallpaper/*.{jpg,jpeg,png,gif} | rofi -dmenu -p "Wallpapers")
if [ "$selected" ]; then
    swww img $selected --transition-fps 60 --transition-step 5 --transition-type=random 
    notify-send "Wallpaper updated"
fi
