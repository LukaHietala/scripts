#!/bin/sh

SELECTION=$(greenclip print | grep . | dmenu -i -l 10 -p "clipboard:")

if [ -n "$SELECTION" ]; then
    greenclip print "$SELECTION" | xclip -selection clipboard
fi
