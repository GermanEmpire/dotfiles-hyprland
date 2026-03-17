#!/usr/bin/env bash

vol=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
mute=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}')

if [ "$mute" = "[MUTED]" ]; then
  dunstify -r 9993 -u normal -i audio-volume-muted-symbolic "Muted"
else
  if [ "$vol" -eq 0 ]; then
    icon="audio-volume-muted-symbolic"
  elif [ "$vol" -le 33 ]; then
    icon="audio-volume-low-symbolic"
  elif [ "$vol" -le 66 ]; then
    icon="audio-volume-medium-symbolic"
  else
    icon="audio-volume-high-symbolic"
  fi

  dunstify -r 9993 -u normal -i "$icon" -h int:value:"$vol" "Volume: ${vol}%"
fi
