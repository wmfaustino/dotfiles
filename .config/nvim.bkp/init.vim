" Basic settings
let mapleader = " "

filetype plugin on " required by nerdcommenter
syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'gruvbox-community/gruvbox'
"https://github.com/glacambre/firenvim

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'




Plug 'vim-airline/vim-airline'
" Plug 'terroo/terroo-colors'
Plug 'ajmwagar/vim-deus'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
" Plug 'vimwiki/vimwiki'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
"Plug 'preservim/nerdcommenter'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'iamcco/markdown-preview.nvim'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
" Plug 'junegunn/seoul257.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ntpeters/vim-better-whitespace'
"
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'mbbill/undotree'
" https://github.com/tpope/vim-fugitive
"

call plug#end()

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>-2<CR>gv=gv

" fun! TrimWhitspace()
"     let l:save = winsaveview()
"     keeppatterns %s/\s\+$//e
"     call winsaveview(l:save)
" endfun

" augroup THE_PRIMEAGEN
"     autocmd!
"     autocmd BufWritePre * :call TrimWhitspace()
" augroup END

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"


" Vim Emmet
let g:user_emmet_leader_key=','

" Vim Indent Guides
let g:indent_guides_enable_on_vim_startup = 1


" Vim Hexokinase
let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]
let g:Hexokinase_highlighters = ['backgroundfull']

" Reenable hexokinase on enter
autocmd VimEnter * HexokinaseTurnOn

" Vim Commentary
map <C-/> gc<CR>

