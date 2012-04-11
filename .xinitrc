setxkbmap -option ctrl:nocaps
xset +fp /usr/share/fonts/local
xset fp rehash
xbindkeys
dwmstatus &
exec ck-launch-session dwm
