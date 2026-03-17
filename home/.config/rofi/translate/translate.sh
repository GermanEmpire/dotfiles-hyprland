#!/bin/bash

options="Translate\nClipboard\nEN → DE\nDE → EN"

chosen=$(echo -e "$options" | rofi -dmenu -p "Translate" -theme ~/.config/rofi/translate/translate.rofi)

case "$chosen" in
    "Translate")
        text=$(rofi -dmenu -p "Text" -theme ~/.config/rofi/translate/translate.rofi)
        [ -z "$text" ] && exit
        result=$(trans -b :en "$text")
        notify-send "Translation" "$result"
        ;;
        
    "Clipboard")
        text=$(xclip -o)
        result=$(trans -b :en "$text")
        notify-send "Clipboard Translation" "$result"
        ;;
        
    "EN → DE")
        text=$(rofi -dmenu -p "English" -theme ~/.config/rofi/translate/translate.rofi)
        result=$(trans -b en:de "$text")
        notify-send "German" "$result"
        ;;
        
    "DE → EN")
        text=$(rofi -dmenu -p "Deutsch" -theme ~/.config/rofi/translate/translate.rofi)
        result=$(trans -b de:en "$text")
        notify-send "English" "$result"
        ;;
esac
