#!/bin/bash

# Import D-Bus environment so notify-send works
source "$HOME/.dbus-env"

# Check if HDMI1 is connected AND active (i.e., turned on)
if xrandr | grep "HDMI1 connected" >/dev/null; then
    if xrandr | grep "HDMI1 connected [^ ]" | grep -v disconnected | grep -q '[0-9]\+x[0-9]\++'; then
        # HDMI1 is currently ON — turn it off
        xrandr --output HDMI1 --off \
               --output eDP1 --primary --mode 1366x768 --pos 0x0
        feh --no-fehbg --bg-fill "$HOME/Downloads/wallpaperflare.com_wallpaper.jpg"
        notify-send "HDMI1 turned OFF"
    else
        # HDMI1 is connected but OFF — turn it ON and extend
        xrandr --output eDP1 --primary --mode 1366x768 --pos 0x0 \
               --output HDMI1 --mode 1920x1080 --right-of eDP1 --auto
        feh --no-fehbg --bg-fill "$HOME/Downloads/wallpaperflare.com_wallpaper.jpg" \
                          "$HOME/Downloads/wallpaperflare.com_wallpaper.jpg"
        notify-send "HDMI1 turned ON"
    fi
else
    notify-send "HDMI1 not connected"
fi

