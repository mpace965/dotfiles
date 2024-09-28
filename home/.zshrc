
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="steeef"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias tmux='tmux -2'

if [[ -a ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi

setopt extended_glob

