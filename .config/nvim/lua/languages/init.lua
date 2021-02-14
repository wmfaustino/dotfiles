local all_langs = {}


all_langs['vim'] = {
    
    [ 'filetypes'    ] = { 'vim'                                          },

    ['lsp'           ] = {
        [ 'dependencies' ] = { 'vim-language-server,'                     },
        [ 'server'       ] = { 'vimls'                                    },
    },

    -- [ 'treesitter'   ] = {                                             },
    
    ['ale'           ] = {
        [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
        [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }

    },
}

all_langs['shell'] = {

    [ 'filetypes'    ] = { 'sh'                                             },

    ['lsp'           ] = {
        [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
        [ 'server'       ] = { 'bashls'                                     },
    },

    [ 'treesitter'   ] = { 'bash'                                           },
    
    ['ale'           ] = {
        [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
        [ 'ale_fixers'   ] = {
            'shfmt', 'remove_trailing_lines', 'trim_whitespace'
        }
    },
}

all_langs['python'] = {

    [ 'filetypes'    ] = { 'py'                             },

    ['lsp'           ] = { 

        [ 'dependencies' ] = { 'pyright', 'flake8'          },
        [ 'server'       ] = { 'pyright'                    },
    },

    [ 'treesitter'   ] = { 'python'                         },
    
    ['ale'           ] = {
        [ 'ale_linters'  ] = { 'pyright', 'flake8'          },
        [ 'ale_fixers'   ] = {
            'add_blank_lines_for_python_control_statements',
            'remove_trailing_lines',
            'trim_whitespace'
        }
    },
}

all_langs['javascript'] = {
    
    [ 'filetypes'    ] = { 'js', 'ts'                                        },
    -- ['options']

    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'typescript', 'typescript-language-server'    },
        [ 'server'       ] = { 'tsserver'                                    },
    },
    
    [ 'treesitter'   ] = { 'javascript', 'typescript'                        },
    
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'tsserver'                                },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace'}
    }
}


return all_langs
