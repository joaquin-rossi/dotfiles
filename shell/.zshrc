# If not running interactively, don't do anything
[[ $- != *i* ]] && return

autoload -Uz promptinit && promptinit && prompt adam1

setopt autocd # automatically cd into typed directory
setopt interactive_comments

# History in cache directory
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# Basic autocomplete
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)

# Source configs
source ~/.config/aliasrc
source ~/.profile

compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
