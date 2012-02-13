#!/bin/sh -e
# ~/.xinitrc 0.3 2012/02/12 cdarwin@X220i
# 

setxkbmap -option ctrl:nocaps
xset +fp /usr/share/fonts/local
xset fp rehash
xbindkeys
upower -e

# Start a dbus-session
. /etc/X11/xinit/xinitrc.d/30-dbus
# Start Gnome-Keyring
/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh

while true
do
BAT=$(acpi -b |tr -d ','|awk '{print $4}')
MEM=$(free -m|grep "buffers/cache"|awk '{print $3}')M
CPU=$(cpufreq-info |grep "current CPU frequency is"|sed -e 's,current CPU frequency is ,,' -e 's, ,,g' -e 's,.$,,'|tr -s '\n' ' ')
DAT=$(date "+%m/%d %H%M")
    xsetroot -name "${BAT} | ${MEM} | ${CPU} | ${DAT}"
    sleep 60
done &
exec ck-launch-session dwm
