#!/bin/bash

# Volume step
STEP=10

case "$1" in
    up) pamixer -i $STEP ;;   # Increase volume
    down) pamixer -d $STEP ;; # Decrease volume
    toggle) pamixer -t ;;     # Toggle mute
    *) echo "Usage: $0 {up|down|toggle}" ;; # Help message
esac

