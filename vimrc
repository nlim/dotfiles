set nocompatible " be iMproved, required
filetype off
syntax on
execute pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'derekwyatt/vim-scala'
Plugin 'flazz/vim-colorschemes'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-fugitive'
" Plugin 'eagletmt/ghcmod-vim'
Plugin 'bling/vim-airline'
Plugin 'dag/vim2hs'
Plugin 'mileszs/ack.vim'
Plugin 'ryanss/vim-hackernews'
Plugin 'pangloss/vim-javascript'
Plugin 'guns/xterm-color-table.vim'
" Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc'
Plugin 'ehamberg/ghcmod-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/syntastic'
Plugin 'ensime/ensime-vim'

" Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'

call vundle#end()
filetype plugin indent on

" match ErrorMsg '\s\+$'
set hlsearch
set number
set autochdir

set tags=./tags,tags;

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Folding Settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" colorscheme 256-grayvim
" colorscheme 256-jungle
" colorscheme beauty256
" colorscheme calmar256-light
" colorscheme charged-256
" 'colorful256.vim'
"  colorscheme desert256
" colorscheme devbox-dark-256
" colorscheme mrkn256
" colorscheme oceanblack256
" colorscheme simple256
" colorscheme summerfruit256
" 'trivial256.vim'
" 'twilight256.vim'
"
" Used this often
" colorscheme wombat256
"
" colorscheme wombat256mod
"
set background=dark
colorscheme gruvbox

" colorscheme xoria256
"colorscheme molokai


" Quick SBT Support
"
set errorformat=%E\ %#[error]\ %#%f:%l:\ %m,%-Z\ %#[error]\ %p^,%-C\ %#[error]\ %m
set errorformat+=,%W\ %#[warn]\ %#%f:%l:\ %m,%-Z\ %#[warn]\ %p^,%-C\ %#[warn]\ %m
set errorformat+=,%-G%.%#
" set foldmethod=syntax

:command -nargs=0 Sbtcf cf /tmp/sbt.quickfix

" :command -nargs=0 AckBackend Ack --ignore-file=match:/Spec/ --ignore-file=match:/tags/ SendNotification ~/work/backend/
" syn region foldImports start=/\(^\s*\n^import\)\@<= .\+;/ end=+^\s*$+ transparent fold keepend
" syn region foldImports start=/\(^\s*\n^import\)\@<= .\+/ end=+^\s*$+ transparent fold keepend

" autocmd vimenter * NERDTree
" autocmd BufWritePost *.scala :EnTypeCheck
