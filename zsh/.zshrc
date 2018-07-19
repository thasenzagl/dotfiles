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
