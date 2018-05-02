" solarized theme
""install from here
"https://github.com/altercation/vim-colors-solarized
syntax on

set t_Co=256
set background=dark
set guifont=DejaVu_Sans_Mono_for_Powerline:h12
let g:solarized_termtrans = 1
" colorscheme solarized
" colorscheme delek
colorscheme space-vim-dark
let g:solarized_termcolors=256


set nocompatible
set hidden
set path+=**
set tags=tags.vim
set wildmenu


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'majutsushi/tagbar'
Bundle 'edkolev/tmuxline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nvie/vim-flake8' " use F7 to run flame8 on file https://vimawesome.com/plugin/vim-flake8
Plugin 'liuchengxu/space-vim-dark' " https://github.com/liuchengxu/space-vim-dark

"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-ctrlspace/vim-ctrlspace'
"Plugin 'tpope/vim-fugitive'
"Plugin 'fatih/vim-go'
call vundle#end()

nnoremap [ :call Flake8()<CR>

"-------------
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tmuxline#enabled = 0

let g:airline_theme='minimalist'
set laststatus=2

""-------------

filetype plugin indent on

set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set colorcolumn=79
set backspace=2
set number relativenumber
filetype indent on

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


set mouse=a
set ttymouse=xterm2

" autocomplete speedup
set complete-=i

" autoremove wild whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
