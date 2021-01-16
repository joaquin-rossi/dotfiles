[[ $- != *i* ]] && return
source "$HOME/.profile"
[ "$(tty)" = "/dev/tty1" ] && startx

export TERM=xterm-256color
source ~/.config/aliasrc
PS1='\u \W $ '

export HISTCONTROL=ignoreboth

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

shopt -s autocd
