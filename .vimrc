set nocompatible

" Auto installing NeoBundle
let iCanHazNeoBundle=1
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif

" Call NeoBundle
if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand($HOME.'/.vim/bundle/'))

" is better if NeoBundle rules NeoBundle (needed!)
NeoBundle 'Shougo/neobundle.vim'

" the other bundles:
NeoBundle 'vim-scripts/closetag.vim'
NeoBundle 'alfredodeza/coveragepy.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'vim-scripts/django.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'jplaut/vim-arduino-ino'
NeoBundle 'tpope/vim-sensible'

" some colors
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'jnurmine/Zenburn'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

colorscheme zenburn
syntax on

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
set undofile

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set nu

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

" syntastic
let g:syntastic_python_checker = 'pylint'

" mapping ctrl+h and ctrl+l to open additional file buffers
:noremap <C-h> :bprev<CR>
:noremap <C-l> :bnext<CR>

" let's turn on NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.un\~$', '\.swp$']
autocmd VimEnter * NERDTree
