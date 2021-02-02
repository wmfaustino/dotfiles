-- local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables

local Keymap = {}

Keymap.scopes = {
    global = vim.api.nvim_set_keymap,
    buffer = vim.api.nvim_buf_set_keymap
}

Keymap.is_table = function(t)
    if type(t) ~= 'table' then
        error('options should be a type of "table"')
        return
    end


Keymap.args = function(t)
    is_table(t)

    local args = {}
    local num_args = ''
    
    t[1] = 'global' and num_args = 4 or num_args = 5
    
    for i =2, num_args, 1 do
        args[i]

Keymap.set = function(keybindings_table)

    for key, t in pairs(keybindings_table) do
        if type(t) ~= 'table' then
            error('options should be a type of "table"')
            return
        end
       
        scope = t[1]

        Keymap.scopes[scope](t[2],t[3],t[4],t[5])
    end 
end

return Keymap
