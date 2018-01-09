set nocompatible
filetype off
syntax on
set nu
set autoindent
set smartindent
set incsearch
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set cursorline
colorscheme desert

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'pep8'

call vundle#end()  
filetype plugin indent on
noremap <buffer> <F8> :NERDTree<CR>
