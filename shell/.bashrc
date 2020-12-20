#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|

[[ $- != *i* ]] && return

PS1='\u \W $ '

export TERM=xterm-256color
export HISTCONTROL=ignoreboth

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

shopt -s autocd

source ~/.config/aliasrc
