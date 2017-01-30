source $HOME/.homesick/repos/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme steeef

antigen apply

if [[ -a ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi

setopt extended_glob

