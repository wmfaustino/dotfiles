-- -----------------------------------------------------------------------------
-- => Language Servers 
-- -----------------------------------------------------------------------------


Language = {}
Language.configured = {}

Language['configured']['javascript'] = {
    [ 'filetypes'    ] = { 'js', 'ts'                                 },
    [ 'dependencies' ] = { 'typescript', 'typescript-language-server,'},
    [ 'server'       ] = { 'tsserver'                                 },
    [ 'treesitter'   ] = { 'javascript', 'typescript'                 },
    [ 'ale_linters'  ] = { 'tsserver'                                 },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['configured']['vim'] = {
    [ 'filetypes'    ] = { 'vim'                                      },
    [ 'dependencies' ] = { 'vim-language-server,'                     },
    [ 'server'       ] = { 'vimls'                                    },
    [ 'treesitter'   ] = {                                            },
    [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['configured']['shell'] = {
    [ 'filetypes'    ] = { 'sh'                                         },
    [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
    [ 'server'       ] = { 'bashls'                                     },
    [ 'treesitter'   ] = { 'bash'                                       },
    [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
    [ 'ale_fixers'   ] = {
        'shfmt', 'remove_trailing_lines', 'trim_whitespace'
    }
}

Language['configured']['python'] = {
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

teste = { ['javascript'] = Language['configured'].javascript['ale_linters'] }

Language.set_ale_linters = function(lang)
   
    Var.set({
        { 'buffer', 'ale_linters', { [lang] = Language['configured'][lang]['ale_linters'] } },
        { 'global', 'ae', 1 }
    })

end
Language.set_ale_linters('javascript')
-- let b:ale_linters = {'javascript': ['tsserver']}

-- let b:ale_fixers =  {
-- \   'javascript': [
-- \     'remove_trailing_lines',
-- \     'trim_whitespace'
-- \   ]
-- \}

-- local languages = require('')

-- Var.set({
--     'buffer', 'ale_linters', 
-- })



Language.get_attr = function(attr)
    
    local servers = {}
    
    for k, v in pairs(Language['configured']) do
        table.insert(servers, v[attr][1])
    end
    return servers
end


Language.servers = Language.get_attr('server')
Language.treesitter = Language.get_attr('treesitter')


Language.on_attach = function(on_attach)

    for _, lsp in ipairs(Language.servers) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end

end


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
