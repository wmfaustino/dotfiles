--[[ --------------------------------------------------------------------------
 _                                             
| |    __ _ _ __   __ _ _   _  __ _  __ _  ___ 
| |   / _` | '_ \ / _` | | | |/ _` |/ _` |/ _ \
| |__| (_| | | | | (_| | |_| | (_| | (_| |  __/
|_____\__,_|_| |_|\__, |\__,_|\__,_|\__, |\___|
                  |___/             |___/      

==> Methods to setup languages
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require('languages')


--[[ ---  --------------------------------------- ]]
local Languages = {}

--[[ --- get all language servers ------------------------------------------ ]]
Languages.get_servers = function(all_langs)
    
    local servers = {}
    
    for lang, attr in pairs(all_langs) do

	-- each language table has a lsp attribute
        if(attr.lsp ~= nil) then
            table.insert(servers, attr.lsp['server'][1])
        end

    end
    return servers
end

--[[ --- get all treesitter language --------------------------------------- ]]
Languages.get_treesitter = function(all_langs)
    
    local treesitters = {}
    
    for lang, attr in pairs(all_langs) do
        
	-- each language table has a treesitter attribute
        if(attr.treesitter ~= nil) then
         table.insert(treesitters, attr.treesitter)
        end

    end
    return treesitters
end

Languages.servers = Languages.get_servers(all_langs)
Languages.treesitter = Languages.get_treesitter(all_langs)

Languages.on_attach = function(on_attach)

    for _, lsp in ipairs(Languages.servers) do
      require('lspconfig')[lsp].setup { on_attach = on_attach }
    end

end


--[[
    function that receives a language and set ale variables for that language
]]
Languages.set_ale = function(lang)
   
    local language = all_langs[lang]

    if(language.ale == nil) then return end

    for ale_var, value in pairs(language.ale) do

         table.insert(debug, language.ale[ale_var])
	 
         utils.Variables.set({
             { 'buffer', ale_var, { [lang]= language.ale[ale_var] } },
         })
     end
end

return Languages



--[[

function that receives all languages table and set all ale variables
** not used anymore ** Now I set ale variables calling with a language

Languages.set_all_ale_variables = function(all_langs)
    
    for lang, values in pairs(all_langs) do
       
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
]]


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
