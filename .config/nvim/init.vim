
call plug#begin('~/.config/nvim/plugged')

" --- color schemes
Plug 'dikiaap/minimalist'
Plug 'itchyny/lightline.vim'

" Plug 'NLKNguyen/papercolor-theme'

" --- file tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" --- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'mbbill/undotree'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

"Plug 'tpope/vim-endwise' " helps to end certain structures automatically
"Plug 'rstacruz/vim-closer' " Closes brackets. Only works when you press Enter.
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'       " Show the visual mark on indendation blocks ┆
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'tweekmonster/startuptime.vim'
call plug#end()

" -----------------------------------------------------------------------------
" => basic config
" -----------------------------------------------------------------------------
nnoremap <leader>; A;<esc>
nnoremap <silent> <leader>n :nohlsearch

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim
nnoremap <leader>sv :so %

command! Format execute 'lua vim.lsp.buf.formatting()'

" -----------------------------------------------------------------------------
lua require 'init'

" move visually selected lines up or down
" nnoremap <leader>k :m .-2<CR>==
" nnoremap <leader>j :m .+1<CR>==
" vnoremap <leader>k :m '<-2<CR>gv=gv
" vnoremap <leader>j :m '>+1<CR>gv=gv
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==
vnoremap <C-k> :m '<-2<CR>gv=gv
vnoremap <C-j> :m '>+1<CR>gv=gv
