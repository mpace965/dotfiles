execute pathogen#infect()

syntax on
filetype plugin indent on

set number
set expandtab
set shiftwidth=2
set softtabstop=2

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
