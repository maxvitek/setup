colorscheme zenburn
execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" mapping ctrl+h and ctrl+l to open additional file buffers
:noremap <C-h> :bprev<CR>
:noremap <C-l> :bnext<CR>

" let's turn on NERDTree
autocmd VimEnter * NERDTree
