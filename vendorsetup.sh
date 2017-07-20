for device in $(curl -s https://raw.githubusercontent.com/HexagonRom/official_devices/master/devices.json | sed 's/ //; /^$/d' | grep -Po '\"codename\": ".*?"' | sed -e 's/codename//;s/\"//g;s/\: //')
do
for var in eng user userdebug; do
add_lunch_combo hexagon_$device-$var
done
done
