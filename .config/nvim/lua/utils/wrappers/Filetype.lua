--[[ --------------------------------------------------------------------------
 _____ _ _      _                    
|  ___(_) | ___| |_ _   _ _ __   ___ 
| |_  | | |/ _ \ __| | | | '_ \ / _ \
|  _| | | |  __/ |_| |_| | |_) |  __/
|_|   |_|_|\___|\__|\__, | .__/ \___|
                    |___/|_|         

==> Methods to setup filetype
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]

local lang = 'javascript'

local Filetype = {}

Filetype.config = function(lang)
-- local utils = require'utils'
    -- set ale vars
    utils.Ale.set_vars(lang)
    -- language especific settings
    utils.Options.set(languages[lang].options)
end

return Filetype
-- local options = languages[lang].options

-- set_ale_vars(lang)
-- set_options(options)
