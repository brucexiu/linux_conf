set nocompatible
filetype off
syntax on
set nu
set autoindent
set mouse=a
set smartindent
set incsearch
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set cursorline
set backspace=indent,eol,start
colorscheme desert

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tomlion/vim-solidity'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'pep8'
Plugin 'Integralist/vim-mypy.git'
Plugin 'fisadev/vim-isort.git'
Plugin 'w0rp/ale.git'

call vundle#end()
filetype plugin indent on
noremap <buffer> <F8> :NERDTree<CR>
let g:ale_fixers = {
\   'python': ['flake8', 'isort', 'mypy'],
\}
