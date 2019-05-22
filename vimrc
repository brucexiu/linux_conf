" enable syntax highlighting
syntax on

" show line numbers
set nu

" set tabs to have 4 spaces
set tabstop=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set mouse=a
set smartindent
set incsearch
set hlsearch
set encoding=utf-8
set textwidth=79
set ruler
set backspace=indent,eol,start
set fileformat=unix
set paste


set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'davidhalter/jedi-vim.git'
Plugin 'pep8'
Plugin 'w0rp/ale.git'
Plugin 'Integralist/vim-mypy.git'
Plugin 'fisadev/vim-isort.git'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'fatih/vim-go'
Plugin 'mindriot101/vim-yapf'
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'  " super search
Plugin 'tpope/vim-fugitive'  " git integration
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on

let g:ale_fixers = {
			\   'python': ['flake8', 'isort', 'mypy', 'pydocstyle', 'pyls', 'yapf'],
			\}
" tmux copy bug
" if $TMUX == ''
" set clipboard=unnamed
" endif

set clipboard=unnamed

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
noremap <buffer> <F8> :NERDTree<CR>
let mapleader = "\<Space>"

" enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za

let g:SimpylFold_docstring_preview=1
let g:Powerline_symbols = 'fancy'
let g:ale_completion_enabled = 1
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %code% %s [%severity%]'
let g:ale_fixers = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace'],
			\   'python': ['isort', 'yapf'],
			\}
let g:ale_fix_on_save = 1


let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif
autocmd bufnewfile *.py exec ":call PyAddHeader()"
function PyAddHeader()
	call append(0, "#!/usr/bin/env python")
	call append(1, "# coding: utf8")
endfunction
" autocmd FileType c,cpp,java,python autocmd BufWritePre <buffer> %s/\s\+$//e

" golang
let g:ycm_gocode_binary_path = "$GOPATH/bin"
let g:go_textobj_include_function_doc = 0

" autoformat
" autocmd FileType python let g:autoformat_verbosemode=1
let g:vim_isort_python_version = 'python3'
let g:yapf_style=$HOME."/.config/yapf/style"
" let g:formatter_yapf_style = 'pep8'
" au BufWrite * :Isort
" au BufWrite * :Autoformat

" auto complete
let g:ycm_autoclose_preview_window_after_completion=1
let g:jedi#force_py_version=3

" silent w
" nnoremap <silent><leader>w :silent w<cr>
