#!/bin/sh

man -k . | dmenu -l 30 | awk '{print $1}' | xargs -r man -t | ps2pdf - - | zathura -
