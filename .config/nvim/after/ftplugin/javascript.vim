lua <<EOF
local lang = 'javascript'

local options = languages[lang].options

utils.Languages.set_ale(lang)
utils.Options.set(options)

EOF

" let b:ale_linters = {'javascript': ['tsserver']}

" let b:ale_fixers =  {
" \   'javascript': [
" \     'remove_trailing_lines',
" \     'trim_whitespace'
" \   ]
" \}
