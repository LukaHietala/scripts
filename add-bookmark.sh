#!/bin/sh

bookmark="$(xclip -o)"
destination="$HOME/.local/share/personal/bookmarks"

title=$(echo | dmenu -i -p "Title for $bookmark:")

if [ -z "$title" ]; then
    echo "No title entered. Idiot."
    exit 1
fi

echo "$title $bookmark" >> "$destination"

echo "Bookmark saved."
