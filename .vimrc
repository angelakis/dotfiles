set nocompatible
filetype off

" Vundle part
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'python-mode/python-mode'

call vundle#end()
filetype plugin indent on

syntax enable
set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

set hidden
set showcmd

colorscheme ron

" force good habits
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"set cursorline
set wildmenu
set showmatch

" write easier in greek
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
