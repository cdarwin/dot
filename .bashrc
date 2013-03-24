POWERLINE="${HOME}/workspace/powerline/powerline/bindings/bash/powerline.sh"
set -o vi
[[ -f ~/.aliases ]] && . ~/.aliases
[[ -f $(brew --prefix)/etc/bash_completion ]] && . $(brew --prefix)/etc/bash_completion
[[ -f $POWERLINE ]] && . $POWERLINE || export PS1='$(__git_ps1 "(%s)") \W> '
