lua <<EOF

local lang = 'javascript'


local utils = require'utils'
local set_ale_vars = utils.Ale.set_vars
local set_options = utils.Options.set

local options = languages[lang].options

set_ale_vars(lang)
set_options(options)
EOF

" let b:ale_linters = {'javascript': ['tsserver']}

" let b:ale_fixers =  {
" \   'javascript': [
" \     'remove_trailing_lines',
" \     'trim_whitespace'
" \   ]
" \}
