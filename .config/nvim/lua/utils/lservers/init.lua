-- -----------------------------------------------------------------------------
-- => Language Servers 
-- -----------------------------------------------------------------------------


Language = {}

Language['javascript'] = {
    [ 'filetypes'    ] = { 'js', 'ts'                                 },
    [ 'dependencies' ] = { 'typescript', 'typescript-language-server,'},
    [ 'server'       ] = { 'tsserver'                                 },
    [ 'treesitter'   ] = { 'javascript', 'typescript'                 },
    [ 'ale_linters'  ] = { 'tsserver'                                 },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['vim'] = {
    [ 'filetypes'    ] = { 'vim'                                      },
    [ 'dependencies' ] = { 'vim-language-server,'                     },
    [ 'server'       ] = { 'vimls'                                    },
    [ 'treesitter'   ] = {                                            },
    [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['shell'] = {
    [ 'filetypes'    ] = { 'sh'                                         },
    [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
    [ 'server'       ] = { 'basls'                                      },
    [ 'treesitter'   ] = { 'bash'                                       },
    [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
    [ 'ale_fixers'   ] = {
        'shfmt', 'remove_trailing_lines', 'trim_whitespace'
    }
}

Language['python'] = {
    [ 'filetypes'    ] = { 'py'                         },
    [ 'dependencies' ] = { 'pyright', 'flake8'          },
    [ 'server'       ] = { 'pyright'                    },
    [ 'treesitter'   ] = { 'python'                     },
    [ 'ale_linters'  ] = { 'pyright', 'flake8'          },
    [ 'ale_fixers'   ] = {
        'add_blank_lines_for_python_control_statements',
        'remove_trailing_lines',
        'trim_whitespace'
    }
}

-- Language.servers = {'pyright', 'bashls', 'tsserver', 'vimls'}

Language.get_servers = function()
    
    local servers = {}
    
    for lang, content in ipairs(Language) do

         servers[language][server] = language[server]
    
    end
    return servers
end

teste = Language.get_servers()

Language.on_attach = function(on_attach)
    for _, lsp in ipairs(teste) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end
end

Language.treesitter = {python, bash, javascript, typescript, regex}

-- npm i -g pyright
-- npm i -g bash-language-server
-- npm install -g typescript typescript-language-server
-- npm i -g vim-language-server
-- TSInstall
--  python
--  bash
--  javascript
--  typescript
--
--  regex
-- -----------------------------------------------------------------------------
