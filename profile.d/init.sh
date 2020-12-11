APP_HOME=$1

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

