
Var.set({
    { 'global', 'mapleader', " " }
})

local shell       = 'bash'
local update_time = 50
local indent      = 4
local scroll_num  = 8

Option.set({

    { 'global', 'shell'         , shell      },
    { 'global', 'errorbells'    , false      }, -- Don't play sound on error
    { 'global', 'exrc'          , true       }, -- enable reading .vimrc/.exrc/.gvimrc in the current directory
    { 'global', 'fileformat'    , 'unix'     }, -- end-of-line format: 'dos', 'unix' or 'mac'
    { 'global', 'encoding'      , 'utf-8'    }, -- character encoding used in Vim: 'latin1', 'utf-8'
    { 'global', 'updatetime'    , update_time}, -- Default is 4000ms = 4s

    { 'global', 'syntax'        , 'enable'   }, -- will keep your current color settings
    { 'global', 'showmatch'     , true       }, -- When a bracket is inserted, briefly jump to the matching one.
    { 'window', 'cursorline'    , true       }, -- Highlight current line
    { 'window', 'cursorcolumn'  , true       }, -- Highlight current column
    { 'window', 'signcolumn'    , 'yes'      },
    { 'window', 'colorcolumn'   , '80'       }, 
    { 'window', 'number'        , true       }, -- Show current line number
    { 'window', 'relativenumber', true       }, -- Show relative number
    { 'window', 'scroll'        , scroll_num }, --  scroll number of lines to scroll for CTRL-U and CTRL-D (local to window)
    { 'global', 'scrolloff'     , scroll_num }, -- number of screen lines to show around the cursor
    { 'window', 'wrap'          , false      }, -- do not wrap long lines 
    { 'window', 'breakindent'   , true       }, -- preserve indentation in wrapped t'ext

    -- filetype
    { 'global', 'filetype'      , 'on'       }, -- Enable filetype detection
    { 'global', 'filetype'      , 'plugin-on'}, -- :help :filetype-overview
    { 'global', 'filetype'      , 'indent-on'},  
    
    -- keeping history
    { 'global', 'swapfile'      , false      },
    { 'global', 'backup'        , false      },
    -- undodir and undofile set on undotree plugin config

    -- search
    { 'global', 'hlsearch'      , false      },
    { 'global', 'incsearch'     , true       }, -- show match for partly typed search command
    { 'global', 'ignorecase'    , true       }, -- ignore case when using a search pattern
    { 'global', 'smartcase'     , true       }, -- override 'ignorecase' when pattern has upper case characters

    -- indentation
    { 'buffer', 'smartindent'   , true       }, -- do clever autoindenting
    { 'buffer', 'autoindent'    , true       }, -- automatically set the indent of a new line

    -- buffers
    { 'global', 'hidden'        , true       }, -- Allow multiple hidden buffers
    { 'buffer', 'path'          , '=.,,**'   },

    -- splits
    { 'global', 'splitbelow'    , true       }, -- a new window is put below the current one
    { 'global', 'splitright'    , true       }, -- a new window is put right of the current one
    { 'global', 'inccommand'    , 'split'    }, -- shows partial off-screen results in a preview window
    { 'global', 'fillchars'     , 'vert:\\'  }, -- Removes split separators

    -- tabs
    { 'buffer', 'expandtab'     , true       }, -- expand <Tab> to spaces in Insert mode
    { 'buffer', 'tabstop'       , indent     }, -- number of spaces a <Tab> in the text stands for
    { 'buffer', 'softtabstop'   , indent     }, -- if non-zero, number of spaces to insert for a <Tab>
    { "buffer", "shiftwidth"    , indent     }, -- number of spaces used for each step of (auto)indent
    { "global", "smarttab"      , true       }, -- a <Tab> in an indent inserts 'shiftwidth' spaces 

})


--set fileencoding=utf-8	        " character encoding for the current file
-- "syntax on                      " Enable defautl highlight
    -- {"global", "highligh", "Normal guibg=none"},
-- " highligh ColorColumn ctermbg=lightgrey guibg=lightgrey


-- au BufNewFile,BufRead *.js, *.html, *.css
--     \ set tabstop=2
--     \ set softtabstop=2
--     \ set shiftwidth=2

-- vim.api.nvim_command([[
-- augroup AutoCompileLatex
-- autocmd BufEnter *.tex :set wrap linebreak nolist spell
-- autocmd BufWritePost *.tex :silent !bibtex %:t:r > /dev/null
-- autocmd BufWritePost *.tex :silent !compiler % > /dev/null
-- augroup END 
-- ]])

-- " -----------------------------------------------------------------------------
