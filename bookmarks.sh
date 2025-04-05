#!/bin/sh

xdotool type $(grep -v '^#' ~/.local/share/personal/bookmarks | dmenu -i -l 30 | cut -d' ' -f2)
