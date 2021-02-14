-- local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables

local Keymap = {}

Keymap.scopes = {
    global = vim.api.nvim_set_keymap,
    buffer = vim.api.nvim_buf_set_keymap
}

Keymap.set = function(keybindings_table)

    for key, t in pairs(keybindings_table) do

        utils.Helpers.is_table(t)
        
        scope = t[1]

        if scope == 'global' then
            Keymap.scopes[scope](t[2],t[3],t[4],t[5])
        else
            Keymap.scopes[scope](t[2],t[3],t[4],t[5],t[6])
        end
    end
end

return Keymap
