syntax on

set nocompatible
set hidden
set path+=**
set wildmenu

"solarized theme
"install from here
"https://github.com/altercation/vim-colors-solarized
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Bundle 'edkolev/tmuxline.vim'

call vundle#end()

"-------------
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tmuxline#enabled = 0

let g:airline_theme='minimalist'
set laststatus=2

"-------------

set colorcolumn=72
set number

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

nnoremap <F3> :NERDTreeToggle<CR>
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0

let NERDTreeIgnore = ['\.pyc$']
