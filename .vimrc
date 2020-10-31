set nocompatible 

call plug#begin('~/.vim/plugged')
  Plug 'ycm-core/YouCompleteMe'
  Plug 'itchyny/lightline.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'sheerun/vim-polyglot'
  Plug 'severin-lemaignan/vim-minimap'
call plug#end()

syntax on 
colorscheme onedark

set lazyredraw
set ttyfast
set nowrap
set ruler
set modeline
set number
set tabstop=2
set softtabstop=2
set expandtab
set showcmd
set hlsearch
set laststatus=2
set noshowmode

command Reload source ~/.vimrc
command Hex %!xxd
command HexReverse %!xxd -r
