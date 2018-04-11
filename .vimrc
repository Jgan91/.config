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

" TODO show whitespace
" https://www.reddit.com/r/vim/comments/82yv3p/anyone_know_how_to_get_the_dots_for_leading/
set list
set listchars=tab:··,space:·,eol:¬,trail:·,nbsp:_

" NERDTree
map <LEADER>f :NERDTreeToggle<CR>
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd BufEnter * if !argc() | NERDTreeMirror | endif

filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ElmCast/elm-vim'
Plug 'tpope/vim-sensible'
Plug 'nightsense/seagrey'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'

call plug#end()


let g:seagrey_dark_termcolors=256
syntax enable
set background=dark
colorscheme seagrey-dark
colorscheme carbonized-dark

" Linting
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new
