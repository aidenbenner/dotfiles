set rtp+=/usr/share/vim/autoload/


"UI "
set ruler
set relativenumber
set cursorline
set nocompatible
set showcmd 

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

execute pathogen#infect()

"Tabs "
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
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
    nmap <left> 	<Nop>
    nmap <right>	<Nop>
    nmap <up>	    <Nop>
    nmap <down>	<Nop>
    imap <left>   	<Nop>
    imap <right> 	<Nop>
    imap <up> 	    <Nop>
    imap <down> 	<Nop>

    inoremap jk <Esc>
    inoremap jj <Esc> 

"Normal mode bindings "
    " split settings " 
    nmap <S-Tab> :tabn <CR>
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>





