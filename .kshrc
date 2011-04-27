:
# ~/.kshrc 0.2 2011/04/26 cdarwin@X61s
# credit: http://docsrv.sco.com/SHL_custom/The_Korn_shell_profile_and_kshrc.html
#

if [ -z "$VISUAL" -a -z "$EDITOR" ]; then
    set -o vi
    set -o vi-tabcomplete
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ `tty` = "/dev/tty1" ]; then
	exec xinit
fi

PS1="; "
