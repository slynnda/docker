set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'vim-colorschemes'
Plugin 'vim-sensible'
Plugin 'vim-airline'
Plugin 'vim-airline-themes'
Plugin 'syntastic'
Plugin 'vim-five'
Plugin 'vim-surround'
Plugin 'vim-systemd-syntax'
Plugin 'vim-go'
Plugin 'vim-json'
Plugin 'vim-scala'
Plugin 'vim-ansible-yaml'
Plugin 'vim-markdown'
Plugin 'dockerfile'

filetype plugin indent on

autocmd VimEnter * colorscheme 1989

let g:airline_theme='bubblegum'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_chec_on_wq = 0

set wrap
set numberwidth=5
set smartindent
set autoindent
set tabstop=4
set shiftwidth=2
set smarttab
set expandtab
set hlsearch
set number
