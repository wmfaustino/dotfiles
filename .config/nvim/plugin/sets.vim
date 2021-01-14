" Indentation
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Line Numbers
set relativenumber
set nu

" Keeping History
set noswapfile
set nobackup
  " plugin undotree
set undodir=~/.config/nvim/undodir
set undofile

" Search
set nohlsearch
set incsearch

" Columns
set signcolumn=yes
set colorcolumn=80

set updatetime=50

set noerrorbells

" set hidden
" set nowrap

set scrolloff=8

set nocompatible
set mouse=a
set ignorecase
set smartcase
set encoding=utf-8

set termguicolors
set t_Co=256
set background=dark    " Setting dark mode
set wildmode=longest,list,full " Autocompletion
set splitbelow splitright " Fix splitting
set clipboard+=unnamedplus " Use system clipboard
set modifiable " Allow Nerdtree to create files
