ZSH_THEME="steeef"
unsetopt SHARE_HISTORY
if command -v dircolors >/dev/null 2>&1
then
    eval `dircolors ~/.dircolors`
fi
source $ZSH/oh-my-zsh.sh
