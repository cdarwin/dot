:
# ~/.kshrc 0.3 2012/02/12 cdarwin@X220i
# credit: http://docsrv.sco.com/SHL_custom/The_Korn_shell_profile_and_kshrc.html
#

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
