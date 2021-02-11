local Language = {}

Language['javascript'] = {
    [ 'filetypes'    ] = { 'js', 'ts'                                 },
    [ 'dependencies' ] = { 'typescript', 'typescript-language-server,'},
    [ 'server'       ] = { 'tsserver'                                 },
    [ 'treesitter'   ] = { 'javascript', 'typescript'                 },
    [ 'ale_linters'  ] = { 'tsserver'                                 },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['vim'] = {
    [ 'filetypes'    ] = { 'vim'                                      },
    [ 'dependencies' ] = { 'vim-language-server,'                     },
    [ 'server'       ] = { 'vimls'                                    },
    [ 'treesitter'   ] = {                                            },
    [ 'ale_linters'  ] = { 'ale_custom_linting_rules', 'vimls'        },
    [ 'ale_fixers'   ] = { 'remove_trailing_lines', 'trim_whitespace' }
}

Language['shell'] = {
    [ 'filetypes'    ] = { 'sh'                                         },
    [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
    [ 'server'       ] = { 'basls'                                      },
    [ 'treesitter'   ] = { 'bash'                                       },
    [ 'ale_linters'  ] = { 'language_server', 'shell', 'shellcheck'     },
    [ 'ale_fixers'   ] = {
        'shfmt', 'remove_trailing_lines', 'trim_whitespace'
    }
}

Language['python'] = {
    [ 'filetypes'    ] = { 'py'                         },
    [ 'dependencies' ] = { 'pyright', 'flake8'          }
    [ 'server'       ] = { 'pyright'                    },
    [ 'treesitter'   ] = { 'python'                     },
    [ 'ale_linters'  ] = { 'pyright', 'flake8'          },
    [ 'ale_fixers'   ] = {
        'add_blank_lines_for_python_control_statements',
        'remove_trailing_lines',
        'trim_whitespace'
    }
}

--[[
=== python
*pyright
https://github.com/microsoft/pyright
npm install -g pyright

*flake8
https://flake8.pycqa.org/en/latest/
python -m pip install flake8

=== javascript
https://github.com/theia-ide/typescript-language-server
npm install -g typescript typescript-language-server

=== vim
*vimls
https://github.com/iamcco/vim-language-server
npm install -g vim-language-server


=== shell
*basls
https://github.com/bash-lsp/bash-language-server
npm i -g bash-language-server

*shellcheck
https://github.com/koalaman/shellcheck
apt-get install shellcheck

*shfmt
https://github.com/mvdan/sh
GO111MODULE=on go get mvdan.cc/sh/v3/cmd/shfmt

]]
