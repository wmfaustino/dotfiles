--[[" -----------------------------------------------------------------------------
" => completion-nvim
" -----------------------------------------------------------------------------
]]

-- Use <Tab> and <S-Tab> to navigate through popup menu
-- inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
-- inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

-- Set completeopt to have a better completion experience
-- vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.completeopt = 'menuone,noinsert'

-- Avoid showing message extra message when using completion
vim.o.shortmess = vim.o.shortmess .. 'c'

-- " By default auto popup is enabled, turn it off by
vim.g.completion_enable_auto_popup = 1

-- map <c-p> to manually trigger completion
vim.api.nvim_set_keymap('i', '<C-p>', '<Plug>(completion_trigger)', {silent = true})
-- imap <silent> <c-p> <Plug>(completion_trigger)

-- Or you want to use <Tab> as trigger keys
vim.api.nvim_set_keymap('i', '<S-tab', '<Plug>(completion_smart_s_tab)',{})
-- " imap <tab> <Plug>(completion_smart_tab)
-- " imap <s-tab> <Plug>(completion_smart_s_tab)

-- " possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
vim.g["completion_enable_snippet"] = 'Neosnippet'
-- let g:completion_enable_snippet = 'Neosnippet'

-- Chain Completion
vim.g["completion_chain_complete_list"] = {
    ['complete_items'] = {'lsp', 'snippet'},
    ['mode'] = '<c-p>',
    ['mode'] = '<c-n>'
}
--let g:completion_chain_complete_list = [
--    \{'complete_items': ['lsp', 'snippet']},
--    \{'mode': '<c-p>'},
--    \{'mode': '<c-n>'}
--\]

-- let g:completion_auto_change_source = 1
vim.g["completion_auto_change_source"] = 1

--let g:completion_confirm_key = "\<C-y>"
vim.g["completion_confirm_key"] = "<C-y>"

--let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
vim.g["completion_matching_strategy_list"] = {'exact', 'substring', 'fuzzy'}

-- let g:completion_matching_smart_case = 1
vim.g["completion_matching_smart_case"] = 1
--

