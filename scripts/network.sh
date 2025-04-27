#!/usr/bin/env bash

if [[ $(tail -n+3 /proc/net/wireless 2>/dev/null) ]]; then
        ssid=$(nmcli -t -f name connection show --active | head -n 1)
        wireless_icon="  ${ssid}"
elif [[ $(grep "" /sys/class/net/eth0/* 2>/dev/null) ]]; then
        wired_icon=" LAN"
fi

printf "${wired_icon}${wireless_icon}"
