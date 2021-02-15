lua <<EOF
local lang = 'python'

local options = languages[lang].options

utils.Languages.set_ale(lang)
utils.Options.set(options)

EOF

" let b:ale_linters = {'python': ['flake8', 'pyright']}

" let b:ale_fixers =  {
" \   'python': [
" \     'add_blank_lines_for_python_control_statements',
" \     'isort',
" \     'remove_trailing_lines',
" \     'trim_whitespace'
" \   ]
" \}

