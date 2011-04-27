#!/bin/sh
# ~/.xinitrc 0.2 2011/04/26 cdarwin@X61s
# 

/usr/bin/xscreensaver -no-splash &

while true
do
BAT=`acpi -b |tr -d ','|awk '{print $4}'`
MEM="`free -m|grep \"buffers/cache\"|awk '{print $3}'`M"
CPU=`cpufreq-info|grep "current CPU"|tr -d '\n'|awk '{print $5$6 " - " $11$12}'|sed -e's/z./z/g'`
DAT="`date \"+%m/%d %H%M\"`"
    xsetroot -name "${BAT} | ${MEM} | ${CPU} | ${DAT}"
    sleep 60
done &
exec dwm
