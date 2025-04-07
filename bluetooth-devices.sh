#!/bin/sh

bluetoothctl paired-devices | dmenu -l 20 | cut -d ' ' -f 2 | xargs -r bluetoothctl connect  
