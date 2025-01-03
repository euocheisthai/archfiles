#!/bin/bash
# unused in favor of .xprofile

while ! xrandr; do sleep 0.5; done

killall -q polybar

polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
