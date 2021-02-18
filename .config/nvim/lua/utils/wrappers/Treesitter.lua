--[[ --------------------------------------------------------------------------
 _____                   _ _   _            
|_   _| __ ___  ___  ___(_) |_| |_ ___ _ __ 
  | || '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
  | || | |  __/  __/\__ \ | |_| ||  __/ |   
  |_||_|  \___|\___||___/_|\__|\__\___|_|   

==> Methods to setup the languages
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]
local all_langs = require'languages'

--[[ --- Treesitter table -------------------------------------------------- ]]
local Treesitter = {}

--[[ --- get all treesitter parsers ---------------------------------------- ]]
Treesitter.get_parsers = function(all_langs)
    
    local parsers = {}
    
    for _, attr in pairs(all_langs) do
        
	     -- each language table has a treesitter attribute
        if (attr.treesitter ~= nill and attr.treesitter[1]) then
            table.insert(parsers, attr.treesitter[1])
        end
    end
    return parsers
end
-------------------------------------------------------------------------------

local parser_methods = {
    ['TSInstall'] = require'nvim-treesitter.install'.commands.TSInstall.run,
    ['TSUpdate'] = require'nvim-treesitter.install'.commands.TSUpdate.run
}

local parsers = Treesitter.get_parsers(all_langs)

Treesitter.parsers = function(method, parsers)
    
    for _, parser in ipairs(parsers) do method(parser) end
end

-------------------------------------------------------------------------------
-- Treesitter.parsers(parser_methods['TSInstall'], parsers)
-- return Treesitter.parsers(parser_methods['TSInstall'], parsers)
