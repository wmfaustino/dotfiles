
# variables -------------------------------------
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Plugins ----------------------------------------
if [[ ! -d ~/.zplug ]]; then
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi

source ~/.zplug/init.zsh

zplug "plugins/command-not-found", from:oh-my-zsh

zplug "softmoth/zsh-vim-mode"
zplug "skywind3000/z.lua"

zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"

zplug 'dracula/zsh', as:theme
zplug romkatv/powerlevel10k, as:theme, depth:1

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "zdharma/fast-syntax-highlighting", defer:2

if ! zplug check; then
    zplug install
fi

zplug load 1> /dev/null 2> stdout 

# compinstall -----------------------------------
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "~/.config/zsh/.zshrc"

_comp_options+=(globdots) # Include hidden files.

autoload -Uz compinit
compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Aliases ---------------------------------------
alias la='ls -la --color=auto'
alias lla='ls -lah --color=auto'
alias ll='ls -lh --color=auto'
alias ls='ls --color=auto'
alias l='ls --color=auto'
alias grep='grep --color=auto'
# Load aliases and shortcuts if existent.
#[ -f "~/.config/shell-config/aliasrc" ] && source "~/.config/shell-config/aliasrc"

# History ---------------------------------------
[[ ! -d "${HOME}/.cache" ]] && mkdir -p "${HOME}/.cache"
[[ ! -f "${HOME}/.cache/zsh_history" ]] && <> "${HOME}/.cache/zsh_history"

HISTFILE="${HOME}/.cache/zsh_history"
HISTSIZE=20000
SAVEHIST=20000

setopt SHARE_HISTORY
setopt autocd


# support colors in less ------------------------
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# vi mode ---------------------------------------
bindkey -v

#https://github.com/softmoth/zsh-vim-mode#mode-sensitive-cursor-styling
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff blinking underline"

MODE_INDICATOR_VIINS='%F{15}<%F{8}INSERT<%f'
MODE_INDICATOR_VICMD='%F{10}<%F{2}NORMAL<%f'
MODE_INDICATOR_REPLACE='%F{9}<%F{1}REPLACE<%f'
MODE_INDICATOR_SEARCH='%F{13}<%F{5}SEARCH<%f'
MODE_INDICATOR_VISUAL='%F{12}<%F{4}VISUAL<%f'
MODE_INDICATOR_VLINE='%F{12}<%F{4}V-LINE<%f'

export KEYTIMEOUT=30

## https://git-scm.com/book/sv/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
## PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'


# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
