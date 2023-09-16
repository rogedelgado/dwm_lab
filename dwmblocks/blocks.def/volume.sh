#!/bin/bash


VOL=$(pamixer --get-volume-human)

if [ "$VOL" = "muted" ]; then
        printf " 󰖁 "
else
    if [ "$VOL" -gt 0 ] && [ "$VOL" -le 33 ]; then
        printf " 󰕿 %s " "$VOL"
    elif [ "$VOL" -gt 33 ] && [ "$VOL" -le 66 ]; then
        printf " 󰖀 %s " "$VOL"
    else
        printf " 󰕾 %s " "$VOL"
    fi
fi
