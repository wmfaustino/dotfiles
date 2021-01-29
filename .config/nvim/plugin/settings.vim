let mapleader = "\<space>"

set noerrorbells                " Don't play sound on error

set exrc                        " enable reading .vimrc/.exrc/.gvimrc in the current directory

set fileformat=unix             " end-of-line format: "dos", "unix" or "mac"

" set sh=/usr/bin/zsh

set encoding=utf-8	            " character encoding used in Vim: "latin1", "utf-8"
set fileencoding=utf-8	        " character encoding for the current file

set hidden                      " Allow multiple hidden buffers
set updatetime=50               " Default is 4000ms = 4s
set noswapfile
set nobackup

set number relativenumber       " Show line numbers, relative mode
set scroll=8                    " scroll number of lines to scroll for CTRL-U and CTRL-D (local to window)
set scrolloff=8                 " number of screen lines to show around the cursor

set nowrap                      " do not wrap long lines 
set breakindent                 " preserve indentation in wrapped t"ext

set nohlsearch
set incsearch                   " show match for partly typed search command
set ignorecase                  " ignore case when using a search pattern
set smartcase                   " override 'ignorecase' when pattern has upper case characters

"syntax on                      " Enable defautl highlight
syntax enable                   " will keep your current color settings
" highligh ColorColumn ctermbg=lightgrey guibg=lightgrey
highligh Normal guibg=none

"filetype plugin indent on       " Enable filetype detection
set autoindent                  " automatically set the indent of a new line
set smartindent                 " do clever autoindenting

set showmatch                   " When a bracket is inserted, briefly jump to the matching one.

set cursorline                  " Highlight current line
set cursorcolumn                " Highlight current column
set signcolumn=yes
set colorcolumn=80 

set expandtab                   " expand <Tab> to spaces in Insert mode
set tabstop=4                   " number of spaces a <Tab> in the text stands for
set softtabstop=4               " if non-zero, number of spaces to insert for a <Tab>
set shiftwidth=4                " number of spaces used for each step of (auto)indent
set smarttab                    " a <Tab> in an indent inserts 'shiftwidth' spaces 
set path=.,,**

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" -----------------------------------------------------------------------------
