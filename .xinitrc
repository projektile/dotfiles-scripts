#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

#. /etc/X11/Xsession &

xrdb .Xresources &
nitrogen --restore &
mpd -v --no-daemon --stdout &
wmname LG3D &
xset fp+ ~/.fonts &
conky | while read -r; do xsetroot -name "$REPLY"; done &
do
	sleep 1
done &
#exec dwm
