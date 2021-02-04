-- local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
-- local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
-- local g = vim.g      -- a table to access global variables

local Var = {}

Var.scopes = {
    global = vim.g,
    window = vim.w,
    buffer = vim.b,
    tabpage = vim.t,
    vim = vim.v,
}

Var.set = function(options_table)

    for key, t in pairs(options_table) do

        is_table(t)

        scope = t[1]
        name =t[2] 
        value = t[3]

       Var.scopes[scope][name] = value
    end 
end

return Var
