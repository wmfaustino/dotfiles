
local keybindings = {
    -- move visually lines up or down
    {"global", "n", "<C-k>", ":m .-2<CR>==", { noremap = true }},
    {"global", "n", "<C-j>", ":m .+1<CR>==", { noremap = true }},
    {"global", "v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true }},
    {"global", "v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true }},

    {"buffer", 0, "i", "<C-o>", '<esc>o', {}}
}

Keymap.set(keybindings)
