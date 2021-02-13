-- -----------------------------------------------------------------------------
-- => Language Servers 
-- -----------------------------------------------------------------------------


Language = {}

langs = {}


langs['vim'] = {
    
    [ 'filetypes'    ] = { 'vim'                                      },

    ['lsp'           ] = {
        [ 'dependencies' ] = { 'vim-language-server,'                     },
        [ 'server'       ] = { 'vimls'                                    },
    },

    [ 'treesitter'   ] = {                                            },
    
    [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

langs['shell'] = {

    [ 'filetypes'    ] = { 'sh'                                         },

    ['lsp'           ] = {
        [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
        [ 'server'       ] = { 'bashls'                                     },
    },

    [ 'treesitter'   ] = { 'bash'                                       },
    
    [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
    [ 'ale_fixers'   ] = {
        'shfmt', 'remove_trailing_lines', 'trim_whitespace'
    }
}

langs['python'] = {

    [ 'filetypes'    ] = { 'py'                         },

    ['lsp'           ] = { 

        [ 'dependencies' ] = { 'pyright', 'flake8'          },
        [ 'server'       ] = { 'pyright'                    },
    },

    [ 'treesitter'   ] = { 'python'                     },
    
    [ 'ale_linters'  ] = { 'pyright', 'flake8'          },
    [ 'ale_fixers'   ] = {
        'add_blank_lines_for_python_control_statements',
        'remove_trailing_lines',
        'trim_whitespace'
    }
}

langs['javascript'] = {
    
    [ 'filetypes'    ] = { 'js', 'ts'                                 },

    [ 'lsp'          ] = {
        [ 'dependencies' ] = { 'typescript', 'typescript-language-server'},
        [ 'server'       ] = { 'tsserver'                                 },
    },
    
    [ 'treesitter'   ] = { 'javascript', 'typescript'                 },
    
    [ 'ale'          ] = {
        [ 'ale_linters'      ] = { 'tsserver'                                 },
        [ 'ale_fixers'       ] = { 'remove_trailing_lines', 'trim_whitespace' }
    }
}


-- local fs = require("filesystem")

-- for file in fs.list("/path") do
--   if not fs.isDirectory(file) then
--     print(file)
--   end
-- end

--[[ methods ]]

Language.get_servers = function(langs)
    
    local servers = {}
    
    for k, v in pairs(langs) do
        table.insert(servers, v.lsp['server'][1])
    end
    return servers
end

Language.get_treesitter = function(langs)
    
    local treesitters = {}
    
    for k, v in pairs(langs) do
        table.insert(treesitters, v.treesitter)
    end
    return treesitters
end

Language.servers = Language.get_servers(langs)
Language.treesitter = Language.get_treesitter(langs)

Language.on_attach = function(on_attach)

    for _, lsp in ipairs(Language.servers) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end

end


--[[
    function that receives a language and set ale variables for that language
]]
Language.set_ale = function(lang)
   
    local debug = {}
    local language = langs[lang]

    if(language.ale == nil) then goto continue end

    for ale_var, value in pairs(language.ale) do

         table.insert(debug, language.ale[ale_var])
	 
         Var.set({
             { 'buffer', ale_var, { [lang]= language.ale[ale_var] } },
             -- { 'buffer', ale_var, { [language] = language.ale[ale_var] } },
         })
     end
    ::continue::
    return debug
end

deb = Language.set_ale('javascript')
debv = Language.set_ale('vim')


--[[
    function that receives all languages table and set all ale variables
    ** not used anymore ** Now I set ale variables calling with a language
]]
Language.set_all_ale_vaiables = function(langs)
    
    for lang, values in pairs(langs) do
       
	    if(values.ale == nil) then goto continue
        else
            Var.set({
                { 'buffer', 'ale_linters', { [lang] = {values.ale.ale_linters} } },
                { 'buffer', 'ale_fixers', { [lang] = {values.ale.ale_fixers} } },
            })
        end
        ::continue::
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
