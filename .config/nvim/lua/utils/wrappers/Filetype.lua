--[[ --------------------------------------------------------------------------
    _    _      
   / \  | | ___ 
  / _ \ | |/ _ \
 / ___ \| |  __/
/_/   \_\_|\___|

==> Methods to setup Ale
-----------------------------------------------------------------------------]]

--[[ --- get all languages and their attributes----------------------------- ]]

local lang = 'javascript'


local utils = require'utils'
local set_ale_vars = utils.Ale.set_vars
local set_options = utils.Options.set

local options = languages[lang].options

set_ale_vars(lang)
set_options(options)
