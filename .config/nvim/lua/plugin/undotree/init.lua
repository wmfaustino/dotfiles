-- -----------------------------------------------------------------------------
-- => undotree
-- -----------------------------------------------------------------------------

-- local undodir = "~/.local/share/nvim/undo/"

Option.set({
    -- { 'global', 'undodir', undodir },
    {'buffer', 'undofile', true}          -- Nvim by default stores undo in ~/.local/share/nvim/undo and auto-creates the path (if undofile is enabled).
})

Keymap.set({
    {"buffer", 0, "n", "<leader>u", ":UndotreeToggle<CR>", { noremap = true }}
})
