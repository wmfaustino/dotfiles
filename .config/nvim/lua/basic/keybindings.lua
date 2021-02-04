Keymap.set({
    { 'global', 'n', '<leader;', 'A;<esc>', { noremap = true }},

    -- move visually lines up or down
    {"global", "n", "<C-k>", ":m .-2<CR>==", { noremap = true }},
    {"global", "n", "<C-j>", ":m .+1<CR>==", { noremap = true }},
    {"global", "v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true }},
    {"global", "v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true }},

    -- {"buffer", 0, "i", "<C-o>", '<esc>o', {}},
    -- splits

    -- split navigation
    {'global', 'n', '<leader>h', ':wincmd h<CR>', { noremap = true }},
    {'global', 'n', '<leader>j', ':wincmd j<CR>', { noremap = true }},
    {'global', 'n', '<leader>k', ':wincmd k<CR>', { noremap = true }},
    {'global', 'n', '<leader>l', ':wincmd l<CR>', { noremap = true }},
    
    -- split resize
    {'global', 'n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true }},
    {'global', 'n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true }},
    {'global', 'n', '<C-Up>', ':vertical resize +3<CR>', { noremap = true }},
    {'global', 'n', '<C-Down>', ':vertical resize -3<CR>', { noremap = true }},
})
