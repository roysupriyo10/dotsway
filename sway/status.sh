date_formatted=$(date +"%Y-%m-%d %I:%M:%S %p")

battery_status=$(cat /sys/class/power_supply/BAT0/status)

volume_percentage=$(pamixer --get-volume)

battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)%

custom_space=$('    ')

echo "Vol ${volume_percentage}% ${custom_space} | ${custom_space} ${battery_percentage} ${custom_space} | ${custom_space} ${battery_status} ${custom_space} | ${custom_space} ${date_formatted}"