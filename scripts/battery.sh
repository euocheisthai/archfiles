#!/usr/bin/env bash

output=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep -Po '(?<=percentage:[[:space:]])[0-9\D]+$' | xargs)

printf "%s\n" "${output}"