-- local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables

local Option = {}

Option.scopes = {
    global = vim.o,
    buffer = vim.bo,
    window = vim.wo
}

Option.set = function(options_table)

    for key, t in pairs(options_table) do

        utils.Helpers.is_table(t)

        scope = t[1]
        option =t[2] 
        value = t[3]

       Option.scopes[scope][option] = value
    end 
end

return Option
