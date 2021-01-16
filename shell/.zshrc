[[ $- != *i* ]] && return
source "$HOME/.profile"
[ "$(tty)" = "/dev/tty1" ] && startx

ZSH_THEME="jaischeema"
CASE_SENSITIVE="true"
HYPHEN_INSENSITIVE="true"

plugins=(git zsh-syntax-highlighting)

export ZSH="/home/joaquin/.config/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"
source ~/.config/aliasrc
HISTFILE="$XDG_CACHE_HOME/zsh/history"
