#!/usr/bin/env bash

# nvim nightly

# paq


        # [ 'dependencies' ] = { 'vim-language-server,'                     },
        # [ 'dependencies' ] = { 'bash-language-server', 'shellcheck', 'shfmt'},
        # [ 'dependencies' ] = { 'pyright', 'flake8'          },
        # [ 'dependencies' ] = { 'typescript', 'typescript-language-server'    },

# [ 'treesitter'   ] = { 'bash'                                           },
# [ 'treesitter'   ] = { 'python'                         },
# [ 'treesitter'   ] = { 'javascript', 'typescript'                        },

# Pre requisites
# nodejs
# npm
# go

NVIM_REPO="https://github.com/neovim/neovim"
BUILD_DEST="$HOME/.local/build/neovim"

# https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites
declare -a BUILD_DEPS=(
    "ninja-build"
    "gettext"
    "libtool"
    "libtool-bin"
    "autoconf"
    "automake"
    "cmake"
    "g++"
    "pkg-config"
    "unzip"
)

build_neovim()(

    rm -rf /tmp/neovim
    
    cd /tmp
    git clone "$NVIM_REPO"
    cd /tmp/neovim

    make distclean
    mkdir -p "$BUILD_DEST"
    make CMAKE_INSTALL_PREFIX="$BUILD_DEST" install
)


exit

in_deps(){

    sudo apt install "$@"
}

in_deps "${BUILD_DEPS[@]}"
exit

setup_vim(){

    # language server
    # https://github.com/iamcco/vim-language-server
    npm install -g vim-language-server

}

setup_shell(){
    # npm install -g bash-language-server

    # nvim --headless -c TSInstall bash -c qa
    nvim --headless -c "lua require'nvim-treesitter.install'.commands.TSInstall.run('bash')" -c "qa"
}

setup_shell

exit

declare -A vim=(
    ["lsp"]="vim-language-server",
    ["treesitter"]=""
)

declare -A shell=(
    ["lsp"]="bash-language-server",
    ["treesitter"]="bash",
    ["apt"]="shellcheck"
)


shfmt
GO111MODULE=on go get mvdan.cc/sh/v3/cmd/shfmt


declare -A javascript=(
    ["lsp"]="typescript, typescript-language-server",
    ["treesitter"]="javascript, typescript"
)

declare -A LSP=(
    ["vim"]="vim-language-server",
    ["shell"]="bash-language-server",
    ["python"]="pyright",
    [""]
)

    'nodejs',
    'npm'

declare
