MACPORT=/opt/local
[ -d $MACPORT ] && PATH=$MACPORT/bin:$MACPORT/sbin:$PATH
BREW=/usr/local
[ -d $BREW ] && PATH=$BREW/bin:$BREW/sbin:$PATH
HEROKU=$BREW/heroku
[ -d $HEROKU ] && PATH=$PATH:$HEROKU/bin:$HEROKU/sbin
HPATH=$HOME/usr/local
[ -d $HPATH ] && PATH=$HPATH/bin:$HPATH/sbin:$PATH
#GOROOT=$HOME/usr/local/go
GOROOT=/usr/local/go
[ -d $GOROOT ] && PATH=$PATH:$GOROOT/bin:$GOROOT/sbin && export GOROOT
ANDROOT=/opt/android-sdk
[ -d $ANDROOT ] && PATH=$PATH:$ANDROOT/tools:$ANDROOT/platform-tools
PLAN9=/usr/local/plan9
[ -d $PLAN9 ] && PATH=$PATH:$PLAN9/bin:$PLAN9/sbin
export PATH
export MANPATH=$HPATH/share/man:$MANPATH
export PKG_CONFIG_PATH=$HPATH/lib/pkgconfig
export TZ=US/Pacific
export HISTFILE=$HOME/.khistory
export HISTSIZE=10000
export SAVEHIST=1000
export HOSTNAME=$(hostname)
export PAGER=less
export EDITOR=vim
export WEBKIT_IGNORE_SSL_ERRORS=1
[ -s $HOME/.bashrc -a -r $HOME/.bashrc ] && . $HOME/.bashrc
export LANGUAGE="en_US:en"
export LC_MESSAGES="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"

# Homebrew extras
export PATH=$BREW/share/python:$BREW/opt/ruby/bin:$BREW/share/npm/bin:$PATH
