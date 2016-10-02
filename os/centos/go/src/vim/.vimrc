set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/flazz/vim-colorschemes.git'
Plugin 'git://github.com/tpope/vim-sensible.git'
Plugin 'git://github.com/vim-airline/vim-airline.git'
Plugin 'git://github.com/vim-airline/vim-airline-themes.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/tpope/vim-surround.git'

call vundle#end()

autocmd VimEnter * PluginInstall
autocmd VimEnter * colorscheme 1989

filetype plugin indent on

let g:airline_theme='bubblegum'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_chec_on_wq = 0
