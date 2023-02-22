#######################################
# My tmux config file
# author: Thomas Hasenzagl, thomas.hasenzagl@gmail.com
#######################################

# Pure Theme
# Install theme using `npm install --global pure-prompt`
autoload -U promptinit; promptinit
prompt pure

# Plugins
plugins=(
  git
)

# open tmux when terminal is opened
if [ "$TMUX" = "" ]; then tmux; fi

export PATH=/usr/local/anaconda3/envs/py311/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

