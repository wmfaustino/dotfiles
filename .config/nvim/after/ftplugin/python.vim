let b:ale_linters = {'python': ['flake8', 'pyright']}

let b:ale_fixers =  {
\   'python': [
\     'add_blank_lines_for_python_control_statements',
\     'isort',
\     'remove_trailing_lines',
\     'trim_whitespace'
\   ]
\}

