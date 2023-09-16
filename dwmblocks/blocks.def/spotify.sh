#!/bin/sh

# A dwm_bar function that shows the current artist, track, duration, and status from Spotify using playerctl
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: spotify/spotifyd, playerctl

# NOTE: The official spotify client does not provide the track position or shuffle status through playerctl. This does work through spotifyd however.

ARTIST=$(playerctl metadata artist)
TRACK=$(playerctl metadata title)
STATUS=$(playerctl status)

if [ "$STATUS" = "Playing" ]; then
    STATUS=" 󰓇 "
elif [ "$STATUS" = "Paused" ]; then
    STATUS=" 󰏤 "
fi

printf "%s %s - %s " "$STATUS" "$ARTIST" "$TRACK"
