lua <<EOF
local lang = 'sh'

local options = languages[lang].options


utils.Languages.set_ale(lang)
utils.Options.set(options)


EOF

" let b:ale_linters = {'sh': [ 'bashate', 'language_server', 'shell', 'shellcheck' ]}

" let b:ale_fixers =  {
" \   'sh': [
" \     'shfmt',
" \     'remove_trailing_lines',
" \     'trim_whitespace'
" \   ]
" \}
