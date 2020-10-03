#          d8b          d8b 888
#          Y8P          Y8P 888
#                           888
# 888  888 888 88888b.  888 888888 888d888 .d8888b
# `Y8bd8P' 888 888 "88b 888 888    888P"  d88P"
#   X88K   888 888  888 888 888    888    888
# .d8""8b. 888 888  888 888 Y88b.  888    Y88b.
# 888  888 888 888  888 888  "Y888 888     "Y8888P
#
# Xorg Config
# Last Modified @ 4th October 2020
# Location: $HOME
# User and group: user:user
# Author: HelixW <shreyas.2000@hotmail.com>

#!/bin/sh

# Resources
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# Merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# Start programs
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

nitrogen --restore &
xsetroot -cursor_name left_ptr &
picom -f &
exec bspwm
