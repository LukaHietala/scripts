#!/bin/sh
regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
url=$(grep -Po "$regex" | dmenu -l 20 -p "Go:" -w "$WINDOWID") || exit
firefox "$url"

