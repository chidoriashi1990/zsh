# Path to your oh-my-zsh installation.
export ZSH="/home/yusuke/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cobalt2"

plugins=(
  zsh-autosuggestions
  aws
  git
  docker
  docker-compose
  httpie
)

source $ZSH/oh-my-zsh.sh

# Docker
if [ $(service docker status | awk '{print $4}') = "not" ]; then
  sudo service docker start > /dev/null
fi

# Starship
eval "$(starship init zsh)"
