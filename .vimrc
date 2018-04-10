set nocompatible
set number
set relativenumber
filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ElmCast/elm-vim'
Plug 'tpope/vim-sensible'
Plug 'nightsense/seagrey'

call plug#end()


let g:seagrey_dark_termcolors=256
syntax enable
set background=dark
colorscheme seagrey-dark
colorscheme carbonized-dark
