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

" onedark.vim override: Don't set a background color when running in a
" terminal;
" just use the terminal's background color
" `gui` is the hex color code used in GUI mode/nvim true-color mode
" `cterm` is the color code used in 256-color mode
" `cterm16` is the color code used in 16-color mode
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145","cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg`setting
  augroup END
endif
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
