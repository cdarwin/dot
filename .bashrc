POWERLINE="${HOME}/workspace/powerline/powerline/bindings/bash/powerline.sh"
set -o vi
[ -s ~/.aliases -a -r ~/.aliases ] && . ~/.aliases
BASH_COMPLETION=$(brew --prefix)/etc/bash_completion.d
if [ -d $BASH_COMPLETION ]; then
    for i in $(ls $BASH_COMPLETION); do
        . $BASH_COMPLETION/$i
    done
fi
[ -f $POWERLINE ] && . $POWERLINE || export PS1='$(__git_ps1 "(%s)")\W> '
