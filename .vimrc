set nocompatible
set encoding=utf-8
filetype off
filetype plugin indent on

syntax on

set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ervandew/supertab'
Plugin 'vifm/vifm.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-python/python-syntax'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'ap/vim-css-color'
Plugin 'frazrepo/vim-rainbow'

call vundle#end()

colorscheme dracula
let g:lightline = {
	\'colorscheme':'dracula',
	\}
let mapleader = ','
set laststatus=2
set t_Co=256

"let g:php_version_id = 70300
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4
set foldmethod=indent
set foldlevel=99

"=> Vifm

map <Leader>vv :Vifm<Cr>

set mouse=nicr

set splitbelow splitright

set path+=**
set wildmenu
set nobackup
set noswapfile

let g:python_highlight_all = 1
let g:SimpylFold_docstring_preview=1
nnoremap <space> za

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix


