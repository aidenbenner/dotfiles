"Use system clipboard
set clipboard=unnamedplus
"UI "
set ruler
set number
set cursorline
set nocompatible
set showcmd 
filetype plugin indent on


set spell spelllang=en_us

let mapleader = "\<Space>"

"Colors"
syntax on
set t_Co=256
colorscheme tender 


"Misc "
set nocp
set wildmenu
set lazyredraw
set backspace=eol,start,indent
set autoread
set magic

set colorcolumn=110
highlight ColorColumn ctermbg=lightgray

"Plugins "
call plug#begin('~/.vim/plugged')

" Colors
Plug 'jacoborus/tender.vim'
Plug 'micha/vim-colors-solarized'

Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'auto-pairs-gentle'
Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'alvan/vim-closetag'

" JS 
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'maksimr/vim-jsbeautify'


" MD 
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-pencil'
Plug 'junegunn/goyo.vim'

Plug 'scrooloose/nerdcommenter'

call plug#end()

"md, markdown == mkd
au! BufRead,BufNewFile *.markdown set filetype=mkd
au! BufRead,BufNewFile *.md       set filetype=mkd

map <C-n> :NERDTreeToggle<CR>


" Change swp file location

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

"Tabs "
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set autoindent
filetype indent plugin on

"Search : 
set ignorecase
set incsearch
set hlsearch
set smartcase
set showmatch

"Folding 
set foldenable 
set foldlevelstart=10
set foldmethod=indent 

"Splits 
set splitbelow
set splitright

"Insert mode bindings "
" Unmap arrow keys " 
nmap <left 	<Nop>
nmap <right	<Nop>
nmap <up	    <Nop>
nmap <down	<Nop>
imap <left   	<Nop>
imap <right 	<Nop>
imap <up 	    <Nop>
imap <down 	<Nop>

inoremap jk <Esc>
"    inoremap jj <Esc> 

"Normal mode bindings "
" split settings " 
nmap <S-Tab> :tabn <CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


nnoremap <F4> :!make 

autocmd filetype c nnoremap <F5> :w <bar> exec '!gcc -std=c99 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <C-]> :w <bar> exec '!g++ -g -std=c++11 '.shellescape('%').' -o  '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cc nnoremap <C-]> :w <bar> exec '!g++ -g -std=c++11 '.shellescape('%').' -o ' .shellescape('%:r').' && ./'.shellescape('%:r')<CR>

autocmd filetype cc nnoremap <C-]> :w <bar> exec '!g++ -g -std=c++11 '.shellescape('%').' -o ' .shellescape('%:r').' && ./'.shellescape('%:r')<CR>


function CompTemp()
  :read ~/.vim/templates/comp.cc
endfunction 









