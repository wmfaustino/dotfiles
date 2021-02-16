
local Commands = {}

Commands['nvim_create_augroups'] = function (definitions)

	for group_name, definition in pairs(definitions) do

        api.nvim_command('augroup '..group_name)
		api.nvim_command('autocmd!')
		
        for _, def in ipairs(definition) do
			-- if type(def) == 'table' and type(def[#def]) == 'function' then
			-- 	def[#def] = lua_callback(def[#def])
			-- end
			local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
			api.nvim_command(command)
		end
		api.nvim_command('augroup END')
	end
end
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
