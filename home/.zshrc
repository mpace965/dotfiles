source $HOME/.homesick/repos/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle horosgrisa/autoenv

antigen theme steeef

antigen apply

# Aliases
alias tmux='tmux -2'

if [[ -a ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi

setopt extended_glob

