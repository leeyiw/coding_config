# Set theme
ZSH_THEME="steeef"

# Set plugins
plugins=(git golang)

# Suppress dircolors error on Mac OS X
if command -v dircolors >/dev/null 2>&1
then
    eval `dircolors ~/.dircolors`
fi

# Run oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Disable history sharing
unsetopt SHARE_HISTORY
