# Set theme
ZSH_THEME="steeef"

# Set plugins
plugins=(git golang)

# Suppress dircolors error on Mac OS X
DIRCOLORS_FILE=$HOME/.dircolors
if command -v dircolors >/dev/null 2>&1 && [ -f $DIRCOLORS_FILE ]
then
    eval `dircolors $DIRCOLORS_FILE`
fi

# Run oh-my-zsh.sh
source $ZSH/oh-my-zsh.sh

# Disable history sharing
unsetopt SHARE_HISTORY

# Use full hostname at PROMPT
PROMPT=`echo $PROMPT | sed -e 's/%m%/%M%/g'`
export PROMPT

# Start tmux
if command -v tmux >/dev/null 2>&1 && [ -z "$TMUX" ]
then
    tmux -2
fi
