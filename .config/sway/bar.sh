date_and_week=$(date "+%d/%m/%Y")
current_time=$(date "+%H:%M")


battery_device=$(upower --enumerate | grep 'BAT' | head -n 1)

if [ -z "$battery_device" ]; then
  echo "No battery detected"
else
  battery_charge=$(upower --show-info "$battery_device" | grep -E "percentage" | awk '{print $2}')
  battery_status=$(upower --show-info "$battery_device" | grep -E "state" | awk '{print $2}')
  if [ "$battery_status" = "discharging" ]; then
    battery_pluggedin='󰁿'  # Battery is discharging
  else
    battery_pluggedin='⚡'   # Battery is charging
  fi
fi

audio_volume=$(pamixer --sink `pactl list sinks short | grep RUNNING | awk '{print $1}'` --get-volume)
media_artist=$(playerctl metadata artist)
media_song=$(playerctl metadata title)
player_status=$(playerctl status)

if [ $player_status = "Playing" ]
then
    song_status='▶'
elif [ $player_status = "Paused" ]
then
    song_status='⏸'
else
    song_status='⏹'
fi


echo "$song_status $media_artist - $media_song | $audio_volume% | $battery_pluggedin $battery_charge | $date_and_week | $current_time"
