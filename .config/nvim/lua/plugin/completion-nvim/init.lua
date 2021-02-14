-- -----------------------------------------------------------------------------
-- => completion-nvim
-- -----------------------------------------------------------------------------
local on_attach = require'completion'.on_attach

utils.Languages.on_attach(on_attach)
-- require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
-- require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}
-- require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
-- require'lspconfig'.vimls.setup{on_attach=require'completion'.on_attach}

utils.Variables.set({

    -- " By default auto popup is enabled,
    { 'global', 'completion_enable_auto_popup', 1 },

    -- " possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
    { 'global', 'completion_enable_snippet', 'Neosnippet' },
    
    -- Chain Completion
    { 'global', 'completion_chain_complete_list',
      {
          [ 'complete_items' ] = {'lsp', 'snippet'},
          [ 'mode' ] = '<C-p>',
          [ 'mode' ] = '<C-n>'
      }
    },
    -- let g:completion_auto_change_source = 1
    { 'global', "completion_auto_change_source", 1 },
    
    --let g:completion_confirm_key , "\<C-y>"
    -- { 'global', "completion_confirm_key", "<C-y>" },
    
    --let g:completion_matching_strategy_list , ['exact', 'substring', 'fuzzy', 'all']
    { 'global', "completion_matching_strategy_list", {'exact', 'substring', 'fuzzy'} },
    
    -- let g:completion_matching_smart_case , 1
    { 'global', "completion_matching_smart_case", 1 }
})

-- -----------------------------------------------------------------------------
utils.Options.set({

    -- Set completeopt to have a better completion experience
    {'global', 'completeopt', 'menuone,noinsert,noselect'},

    --[[
        Avoid showing message extra message when using completion
        Don't pass messages to ins-completion-menu
      ]]
    { 'global', 'shortmess', vim.o.shortmess .. 'c' }
})

-- -----------------------------------------------------------------------------
utils.Keymaps.set({

    -- Use <Tab> and <S-Tab> to navigate through popup menu
    {'global', 'i', '<tab>', 'pumvisible() ? "<C-n>" : "<tab>"', { noremap = true, expr = true }},
    {'global', 'i', '<S-tab>', 'pumvisible() ? "<C-p>" : "<tab>"', { noremap = true, expr = true }},
       
    -- popup trigger --

    -- use <Tab> as trigger keys
    { 'global', 'i', '<tab>', '<Plug>(completion_smart_tab)', {} },
    { 'global', 'i', '<S-tab>', '<Plug>(completion_smart_s_tab)', {} }
    -- use map <c-p> to manually trigger completion
    -- { 'global', 'i', '<C-p>', '<Plug>(completion_trigger)', { silent = true } },
})

--[[

If you're using completion.nvim, look into completion_customize_lsp_label variable. It defines the Kind and it's respective tag. In lua you can define it as
vim.g.completion_customize_lsp_label = {
    Function = ' [function]',
    Method = ' [method]',
    Reference = ' [refrence]',
  }
Also, if you want to change the priority of the Kind, look into completion_items_priority variable. Higher the number, higher the Kind will be displayed in the list. In lua,
  vim.g.completion_items_priority = {
    Function = 10,
    Method = 5,
    Reference = 9,
}

]]

