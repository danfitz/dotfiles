BATPATH=/sys/class/power_supply/BAT0

while true
do
    BAT_FULL=$BATPATH/charge_full
    BAT_NOW=$BATPATH/charge_now
    bf=$(cat $BAT_FULL)
    bn=$(cat $BAT_NOW)

    if [ $(( 100 * $bn / $bf  )) -lt 15 ]
    then
        notify-send "Battery Low! Plug in Charger!" "Power left: $((100 * $bn / $bf))%"
    fi

    if [ $(( 100 * $bn / $bf )) -gt 95 ]
    then
        notify-send "Battery Full! Unplug Charger!" "Power at: $((100 * $bn / $bf))%"
    fi

    sleep 5
done
