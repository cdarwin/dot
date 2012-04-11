MACPORT=/opt/local
[ -d $MACPORT ] && PATH=$MACPORT/bin:$MACPORT/sbin:$PATH
HPATH=$HOME/usr/local/bin
[ -d $HPATH ] && PATH=$HPATH:$PATH
GOROOT=$HOME/usr/local/go
[ -d $GOROOT ] && PATH=$PATH:$GOROOT/bin && export GOROOT
ANDROOT=/opt/android-sdk
[ -d $ANDROOT ] && PATH=$PATH:$ANDROOT/tools:$ANDROOT/platform-tools
PLAN9=/usr/local/plan9
[ -d $PLAN9 ] && PATH=$PATH:$PLAN9/bin
export PATH

if [ -z "$LOGNAME" ]; then
    LOGNAME=$(logname)
    export LOGNAME
fi

export MANPATH=$HOME/usr/local/share/man:$MANPATH
export PKG_CONFIG_PATH=$HOME/usr/local/lib/pkgconfig
export TZ=US/Pacific
export HISTFILE=$HOME/.khistory
export HISTSIZE=10000
export SAVEHIST=1000
export HOSTNAME=$(hostname)
export PAGER=less
export EDITOR=vim
export WEBKIT_IGNORE_SSL_ERRORS=1

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
export LANGUAGE="en_US:en"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
