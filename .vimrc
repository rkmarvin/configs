"solarized theme
""install from here
"https://github.com/altercation/vim-colors-solarized
set t_Co=256
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


syntax on

set nocompatible
set hidden
set path+=**
set tags=tags
set wildmenu


"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'vim-ctrlspace/vim-ctrlspace'
"Plugin 'tpope/vim-fugitive'
"Plugin 'majutsushi/tagbar'
"Bundle 'edkolev/tmuxline.vim'
"Plugin 'fatih/vim-go'
"call vundle#end()

"-------------
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tmuxline#enabled = 0
"
"let g:airline_theme='minimalist'
"set laststatus=2
"
""-------------

set colorcolumn=72
set number

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

"nnoremap <Enter> :NERDTreeToggle<CR>
nnoremap ] :TagbarToggle<CR>
let g:tagbar_autofocus = 0

"let NERDTreeIgnore = ['\.pyc$']
let g:netrw_banner=0        " disable annoing banner
let g:netrw_browser_split=4 " open in priore window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
