local Helpers   = require('utils.Helpers')
local Options   = require('utils.Options')
local Keymaps   = require('utils.Keymaps')
local Variables = require('utils.Variables')
local Languages = require('utils.Languages')

local utils = {
	['Helpers'  ] = Helpers,
	['Options'  ] = Options,
	['Keymaps'  ] = Keymaps,
	['Variables'] = Variables,
	['Languages'] = Languages
}

return utils
