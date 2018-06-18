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
Plugin 'vim-airline/vim-airline'
Plugin 'tmhedberg/SimplyFold'
" Plugin 'python-mode/python-mode'

call vundle#end()
filetype plugin indent on

let python_highlight_all=1
syntax on
set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

set hidden
set showcmd

set foldmethod=indent
set foldlevel=99
nnoremap <space> za

let mapleader=" "

let g:SimpylFold_docstring_preview=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


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

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Vdebug
let g:vdebug_keymap = {
 \    "run" : "<F1>",
 \    "run_to_cursor" : "<F8>",
 \    "step_over" : "<F6>",
 \    "step_into" : "<F5>",
 \    "step_out" : "<F7>",
 \    "close" : "<F2>",
 \    "detach" : "<F3>"
 \}
