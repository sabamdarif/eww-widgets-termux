#!/data/data/com.termux/files/usr/bin/bash

CFG="/data/data/com.termux/files/home/.config/eww"
EWW=$(command -v eww)

## run eww daemon if not running already
if [[ ! $(pidof eww) ]]; then
    ${EWW} daemon
    sleep 1
fi

## open widgets
run_eww() {
    ${EWW} --config "$CFG" open-many profile clock uptime
}
run_eww
