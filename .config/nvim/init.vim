call plug#begin('~/.config/nvim/plugged')
Plug 'plasticboy/vim-markdown'
Plug 'mbbill/undotree'
Plug 'sjl/gundo.vim'
Plug 'godlygeek/tabular'
Plug 'ap/vim-css-color'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'morhetz/gruvbox'
Plug 'andis-sprinkis/lightline-gruvbox-dark.vim'
call plug#end()
set termguicolors
autocmd vimenter * ++nested colorscheme gruvbox
"let g:gruvbox_termcolors=16
let g:lightline = {
      \ 'colorscheme': 'gruvboxdark',
      \ }
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set hlsearch
set nowrap
set smartindent
set shiftwidth=2
set tabstop=2 softtabstop=2
set noerrorbells
set smartcase
set wildmenu
set wildmode=longest,list,full
set encoding=utf-8
set history=5000
set background=dark
set noswapfile
set incsearch
set expandtab
set fileformat=unix
syntax on
filetype plugin on
set noshowmode
set number relativenumber 
set wildmenu
set wildmode=longest,list,full
set nocompatible
set undofile
set undodir=~/.config/nvim/undodir
set laststatus=2
if !has('gui_running') 
set t_Co=256 
endif    
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

map <Up> <Nop>
map <Left> <Nop>
map <Right> <Nop>
map <Down> <Nop>
