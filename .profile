:
# ~/.profile 0.1 2009/10/19 cdarwin@X61s
# credit: http://docsrv.sco.com/SHL_custom/The_Korn_shell_profile_and_kshrc.html
#
PATH=$HOME/usr/local/bin:/opt/java/bin:$PATH:/usr/local/plan9/bin
export PATH

if [ -z "$LOGNAME" ]; then
    LOGNAME=`logname`
    export LOGNAME
fi

MANPATH=$HOME/usr/local/share/man:$MANPATH
export MANPATH
PKG_CONFIG_PATH=$HOME/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH
TZ=America/New_York
export TZ
HISTFILE=$HOME/.khistory
export HISTFILE
HISTSIZE=10000
export HISTSIZE
SAVEHIST=1000
export SAVEHIST
HOSTNAME=`hostname`
export HOSTNAME
PAGER=less
export PAGER
EDITOR=vim
export EDITOR
WEBKIT_IGNORE_SSL_ERRORS=1
export WEBKIT_IGNORE_SSL_ERRORS

if [ -z "$PWD" ]; then
    PWD=$HOME
    export PWD
fi

if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
    ENV=$HOME/.kshrc
    export ENV
fi

case $LOGNAME in
    root)       PS1="# " ;;
    *)  PS1="; " ;;
esac
export PS1
