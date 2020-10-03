#                                              d8b
#                                              Y8P
#
# 888  888 .d8888b   .d88b.  .d8888b  .d8888b  888  .d88b.  88888b.
# `Y8bd8P' 88K      d8P  Y8b 88K      88K      888 d88""88b 888 "88b
#   X88K   "Y8888b. 88888888 "Y8888b. "Y8888b. 888 888  888 888  888
# .d8""8b.      X88 Y8b.          X88      X88 888 Y88..88P 888  888
# 888  888  88888P'  "Y8888   88888P'  88888P' 888  "Y88P"  888  888
#
# XSession Config
# Last Modified @ 4th October 2020
# Location: $HOME
# User and group: user:user
# Author: HelixW <shreyas.2000@hotmail.com>

#!/bin/sh

nitrogen --restore &
xsetroot -cursor_name left_ptr &
picom -f &
exec bspwm
