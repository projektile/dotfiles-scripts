#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script

#. /etc/X11/Xsession &

xrdb .Xresources &
mpd -v --no-daemon --stdout &
#wmname LG3D &
xset fp+ /usr/share/fonts/local &
xset fp rehash &
compton --config .config/compton.conf &
mpdscribble &
xset -dpms &

exec awesome
