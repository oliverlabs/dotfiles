#
# ~/.zshrc
#

export ZSH="${HOME}/.oh-my-zsh"

# Theme.
ZSH_THEME="spaceship"
export SPACESHIP_DIR_TRUNC=0

# Plugins.
plugins=(git z)

source $ZSH/oh-my-zsh.sh

# Set colors for LS_COLORS.
eval `dircolors ~/.dircolors`

# some awesome aliases
alias ll='ls -alF'
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias k='kubectl'
alias tf='terraform'
alias update="sudo apt update && sudo apt upgrade -y"
alias gcb='git checkout -b'
alias myip='curl ifconfig.me'
alias weather="curl 'wttr.in/London?0p'"
alias up="cd .."
alias ..="cd .."
alias c="clear"

# some useful functions
function acp() {
  git add .
  git commit -m "$1"
  git push
}
