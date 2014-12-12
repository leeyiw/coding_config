# Set theme
ZSH_THEME="steeef"

# Set plugins
plugins=(git golang)

# Disable history sharing
unsetopt SHARE_HISTORY

# Suppress dircolors error on Mac OS X
if command -v dircolors >/dev/null 2>&1
then
    eval `dircolors ~/.dircolors`
fi

# Finally run oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh
