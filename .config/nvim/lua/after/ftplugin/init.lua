



let b:ale_linters = {'javascript': ['tsserver']}

let b:ale_fixers =  {
\   'javascript': [
\     'remove_trailing_lines',
\     'trim_whitespace'
\   ]
\}

local languages = require('')

Var.set({
    'buffer', 'ale_linters', 
})
