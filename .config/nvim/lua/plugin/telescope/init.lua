
-- ts_grep = require("telescope.builtin").grep_string({ search = vim.fn.input("Grep for > ") })
-- search = vim.fn.input('Grep for > ')

opts = { noremap = true }

-- print(vim.inspect(opts))

Keymap.set({
    { 'global', 'n', '<leader>ps', '<cmd>lua require("telescope.builtin").grep_string({ search = vim.fn.input("Grep for > ") })<CR>',opts }
})

