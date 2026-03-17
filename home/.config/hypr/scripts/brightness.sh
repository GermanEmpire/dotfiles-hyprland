#!/usr/bin/env bash

brightnessctl set "$1"

bright=$(brightnessctl g)
max=$(brightnessctl m)
percent=$((bright * 100 / max))

dunstify -r 9994 -u low -i display-brightness-symbolic -h int:value:${percent} "Brightness: ${percent}%"
