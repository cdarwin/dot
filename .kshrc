set -o vi
set -o vi-tabcomplete

if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

if [ `tty` = "/dev/tty1" ]; then
  exec xinit 2> ~/.Xlog
elif [ `tty` = "/dev/tty2" ]; then
  export XINITRC=${HOME}/.ginitrc
  exec xinit -- :1 2> ~/.Xglog
fi

PS1="; "
