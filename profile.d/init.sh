PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG=`dirname "$PRG"`"/$link"
    fi
done
SAVED="`pwd`"
cd "`dirname \"$PRG\"`/" >/dev/null
APP_HOME="`pwd -P`"
cd "$SAVED" >/dev/null

export LANG=en_US.UTF-8
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
eval $(dircolors -b ${APP_HOME}/LS_COLORS)
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

PS1="[\u@\h \W\[\e[31m\] \$(git-branch-prompt)\[\e[0m\]] $ "

