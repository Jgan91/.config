set nocompatible

" line numbers # https://jeffkreeftmeijer.com/vim-number/
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" 80 char line
set colorcolumn=80

" tabs
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab

" TODO show whitespace # https://www.reddit.com/r/vim/comments/82yv3p/anyone_know_how_to_get_the_dots_for_leading/
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
