PATH="${HOME}/usr/local/bin:/opt/java/bin:${PATH}"
MANPATH="$HOME/usr/local/share/man:/opt/local/share/man:$MANPATH"
PKG_CONFIG_PATH="${HOME}/usr/local/lib/pkgconfig"
TZ="America/New_York"
HISTFILE=$HOME/.zhistory
HISTSIZE=10000
SAVEHIST=1000
HOSTNAME="`hostname`"
PAGER='less'
EDITOR='vim'
WEBKIT_IGNORE_SSL_ERRORS="1"

if [ `tty` = "/dev/vc/1" ]; then
startx
fi

PS1="%# "
#LANGUAGE=
LC_ALL='en_US.UTF-8'
LANG='en_US.UTF-8'
LC_CTYPE=C

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
