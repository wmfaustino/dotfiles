vim.cmd 'packadd paq-nvim'         -- Load package

local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function

paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

-- Add your packages

-- --- lsp
paq 'neovim/nvim-lspconfig'

-- --- completion
paq 'nvim-lua/completion-nvim'
paq 'Shougo/neosnippet.vim'
paq 'Shougo/neosnippet-snippets'
-- paq 'nvim-lua/lsp_extensions.nvim'

-- --- treesitter
paq { 'nvim-treesitter/nvim-treesitter'}  --, hook=vim.cmd[':TSUpdate'] } -- We recommend updating the parsers on update

-- --- telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

-- --- lint
paq 'dense-analysis/ale'

-- --- statusline
paq 'itchyny/lightline.vim'
-- paq 'maximbaz/lightline-ale'

-- --- color schemes
paq 'dikiaap/minimalist'

-- --- file tree
paq 'kyazdani42/nvim-web-devicons' -- for file icons
paq 'kyazdani42/nvim-tree.lua'

paq 'mbbill/undotree'

paq 'tpope/vim-repeat'
paq 'tpope/vim-surround'

-- paq 'rstacruz/vim-closer' -- Closes brackets. Only works when you press Enter.
paq 'cohama/lexima.vim'
paq 'tpope/vim-commentary'
paq 'Yggdroot/indentLine'       -- Show the visual mark on indendation blocks ┆
-- paq 'mg979/vim-visual-multi', {'branch': 'master'}

paq 'norcalli/nvim-colorizer.lua'

paq 'tweekmonster/startuptime.vim'

-- -----------------------------------------------------------------------------

require('init')

-- You can get Lua syntax highlighting inside .vim files by putting 
--let g:vimsyn_embed = 'l'
