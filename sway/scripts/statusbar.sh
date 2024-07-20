#!/bin/sh
while true
do
    cpu_temp="$(awk '{x += $1} END{ printf "%.2f", x / NR / 1000}' /sys/class/thermal/thermal_zone*/temp)°C"
    date_and_time="$(date +'%Y-%m-%d %I:%M:%S %p')"
    battery="$(cat /sys/class/power_supply/BAT1/capacity)"
    printf "%d%% %s | %s\n" "$battery" "$cpu_temp" "$date_and_time"
    sleep 1
done
