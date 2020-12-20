# Adds `~/.local/bin/*` to $PATH
export PATH="$PATH:$(du -L "$HOME/.local/bin" | cut -f2 | paste -sd ':' -)"

# Define terminal type
export TERM='xterm-256color'

# Default programs:
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"
export FILEMANAGER="thunar"
export EDITOR="vim"

# Export XDG environmental variables from '~/.config/user-dirs.dirs'
eval "$(sed 's/^[^#].*/export &/g;t;d' ~/.config/user-dirs.dirs)"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export INPUTRC="$XDG_CONFIG_HOME/inputrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME/android"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export NPM_CONFIG_PREFIX="$HOME/.local/bin/npm"
export ZDOT_DIR="$XDG_CONFIG_HOME/zsh/"

# Other program settings:
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESS=-R
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_QPA_PLATFORMTHEME="qt5ct"


# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)
