set -o vi

if [ -s ~/.aliases -a -r ~/.aliases ]; then
    source ~/.aliases
fi

UNAME=$(uname)
if [ $UNAME = "Linux" ]; then
    BASH_COMPLETION=/etc/bash_completion
    if [ -s $BASH_COMPLETION -a -r $BASH_COMPLETION ]; then
        source $BASH_COMPLETION
    fi
elif [ $UNAME = "Darwin" -a -n $(brew --prefix) ]; then
    BASH_COMPLETION=$(brew --prefix)/etc/bash_completion.d
    if [ -d $BASH_COMPLETION ]; then
        for i in $BASH_COMPLETION/*; do
            source $i
        done
    fi
fi

GIT_PS1_SHOWUNTRACKEDFILES='nonempty'
GIT_PS1_SHOWUPSTREAM='verbose'
if [[ -n $SSH_TTY ]]; then
    export PS1='\u@\h:\W $(__git_ps1 "(%s)")> '
else
    export PS1='\W $(__git_ps1 "(%s)")> '
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
