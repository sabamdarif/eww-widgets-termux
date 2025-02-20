#!/bin/bash

HOUR=$(date +%H)
echo "Current hour: $HOUR" >> /data/data/com.termux/files/home/.config/eww/debug.log

if [ "$HOUR" -lt 5 ]; then
    echo "Good Night"
elif [ "$HOUR" -lt 12 ]; then
    echo "Good Morning"
elif [ "$HOUR" -lt 17 ]; then
    echo "Good Afternoon"
elif [ "$HOUR" -lt 21 ]; then
    echo "Good Evening"
else
    echo "Good Night"
fi 