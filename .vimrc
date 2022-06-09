set nocompatible 

call plug#begin('~/.vim/plugged')
  Plug 'ycm-core/YouCompleteMe'
  Plug 'itchyny/lightline.vim'
  Plug 'joshdick/onedark.vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ervandew/supertab'
  Plug 'lervag/vimtex'
  Plug 'sirver/ultisnips' 
  Plug 'honza/vim-snippets'
  Plug 'godlygeek/tabular'
  Plug 'preservim/vim-markdown'
call plug#end()

let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:ycm_max_num_identifier_candidates = 3
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:vim_markdown_math = 1
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
set shiftwidth=2
set softtabstop=2
set expandtab
set showcmd
set hlsearch
set laststatus=2
set noshowmode

command Reload source ~/.vimrc
command Hex %!xxd
