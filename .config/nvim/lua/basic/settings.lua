--let mapleader = "\<space>"
--vim.g.mapleader = " "

local Option = require("utils.set_option")

local indent =4

local options_table = {
    -- {"global", "noerrorbells", "true"},        -- Don't play sound on error
    {"global", "exrc", true},                  -- enable reading .vimrc/.exrc/.gvimrc in the current directory
    {"global", "fileformat", "unix"},          -- end-of-line format: "dos", "unix" or "mac"
    {"global", "encoding", "utf-8"},	       -- character encoding used in Vim: "latin1", "utf-8"
    {"global", "hidden", true },               -- Allow multiple hidden buffers
    {"global", "updatetime", 50 },             -- Default is 4000ms = 4s
    -- {"global", "noswapfile", true },
    -- {"global", "nobackup", true },
    {"window", "number", true },                  -- Show current line number
    {"window", "relativenumber", true },          -- Show relative number
    {"window", "scroll", 8},                      --  scroll number of lines to scroll for CTRL-U and CTRL-D (local to window)
    {"global", "scrolloff", 8},              -- number of screen lines to show around the cursor
    -- {"window", "nowrap", true},                   -- do not wrap long lines 
    {"window", "breakindent", true},              -- preserve indentation in wrapped t"ext
    -- {"global", "nohlsearch", true},
    {"global", "incsearch", true},                -- show match for partly typed search command
    -- {"global", ignorecase, true},               -- ignore case when using a search pattern
    {"global", "smartcase", true},                -- override 'ignorecase' when pattern has upper case characters
    {"global", "syntax", "enable"},             -- will keep your current color settings
    -- {"global", "highligh", "Normal guibg=none"},
    {"global", "filetype", "on"},               -- Enable filetype detection
    -- {"global", "plugin", "on"},
    -- {"global", "indent", "on"},
    {"buffer", "smartindent", true},             -- do clever autoindenting
    {"buffer", "autoindent", true},              -- automatically set the indent of a new line
    {"global", "showmatch", true},               -- When a bracket is inserted, briefly jump to the matching one.
    {"window", "cursorline", true},              -- Highlight current line
    {"window", "cursorcolumn", true},            -- Highlight current column
    {"window", "signcolumn", "yes"},
    -- {"window", "colorcolumn", 80}, 
    {"buffer", "expandtab", true},               -- expand <Tab> to spaces in Insert mode
    {"buffer", "tabstop", indent},               -- number of spaces a <Tab> in the text stands for
    {"buffer", "softtabstop", indent},           -- if non-zero, number of spaces to insert for a <Tab>
    {"buffer", "shiftwidth", indent},            -- number of spaces used for each step of (auto)indent
    -- {"buffer", "smarttab", true},                -- a <Tab> in an indent inserts 'shiftwidth' spaces 
    {"buffer", "path", "=.,,**"}
}

Option.set(options_table)

--set sh=/usr/bin/zsh
--set fileencoding=utf-8	        " character encoding for the current file
-- "syntax on                      " Enable defautl highlight
-- " highligh ColorColumn ctermbg=lightgrey guibg=lightgrey


-- au BufNewFile,BufRead *.js, *.html, *.css
--     \ set tabstop=2
--     \ set softtabstop=2
--     \ set shiftwidth=2

-- " -----------------------------------------------------------------------------
