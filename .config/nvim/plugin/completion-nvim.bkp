" -----------------------------------------------------------------------------
" => completion-nvim
" -----------------------------------------------------------------------------

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" By default auto popup is enabled, turn it off by
let g:completion_enable_auto_popup = 1

"map <c-p> to manually trigger completion
imap <silent> <c-p> <Plug>(completion_trigger)

" Or you want to use <Tab> as trigger keys
" imap <tab> <Plug>(completion_smart_tab)
" imap <s-tab> <Plug>(completion_smart_s_tab)

" possible value: 'UltiSnips', 'Neosnippet', 'vim-vsnip', 'snippets.nvim'
let g:completion_enable_snippet = 'Neosnippet'

" Chain Completion
let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp', 'snippet']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]

let g:completion_auto_change_source = 1
let g:completion_confirm_key = "\<C-y>"
let g:completion_matching_strategy_list = ['exact', 'substring'] ", 'fuzzy', 'all']
let g:completion_matching_smart_case = 1
" ---

