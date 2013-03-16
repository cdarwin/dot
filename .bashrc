POWERLINE="${HOME}/workspace/powerline/powerline/bindings/bash/powerline.sh"
set -o vi
[ -f ~/.aliases ] && . ~/.aliases
[ -f $POWERLINE ] && . $POWERLINE
. $POWERLINE
