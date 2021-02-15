lua <<EOF
local lang = 'vim'

local options   = languages[lang].options
local variables = languages[lang].variables

utils.Languages.set_ale(lang)
utils.Options.set(options)
utils.Variables.set(variables)

EOF

" let b:ale_linters = {'vim': ['ale_custom_linting_rules', 'vimls']}

" let b:ale_fixers =  {
" \   'vim': [
" \     'remove_trailing_lines',
" \     'trim_whitespace'
" \   ]
" \}
