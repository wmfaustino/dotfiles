-- -----------------------------------------------------------------------------
-- => neosnippet.vim
-- -----------------------------------------------------------------------------

-- "let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

-- settings
-- -----------------------------------------------------------------------------
if vim.fn.has('conceal') == 1 then

    Option.set({
        {"window", "conceallevel", 1},
        {"window", "concealcursor", "niv"}
    })

end

-- keybindings
-- -----------------------------------------------------------------------------
Keymap.set({

    -- Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    {'global','i', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {}},
    {'global','s', '<C-k>', '<Plug>(neosnippet_expand_or_jump)', {}},
    {'global','x', '<C-k>', '<Plug>(neosnippet_expand_or_target)', {}},
    
    -- SuperTab like snippets behavior.
    -- {'global', 'i', '<TAB>', 'pumvisible() ? "<C-n>" : neosnippet#expandable_or_jumpable() ?',  '"<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"', { expr = true }},
    -- {'global', 's', '<TAB>', 'neosnippet#expandable_or_jumpable() ?', '"<Plug>(neosnippet_expand_or_jump)" : "<TAB>"', { expr = true }}
})
