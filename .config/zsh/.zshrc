#-----[ Global Variables ]-----+
ZDOTDIR="${HOME}/.config/zsh"
PLUGDIR="${ZDOTDIR}/plugged"
CACHEDIR="${XDG_CACHE_HOME:-$HOME/.cache}"

#-----[ Instant Prompt Powerlevel10k ]-----+
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${CACHEDIR}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${CACHEDIR}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


_comp_options+=(globdots) # Include hidden files.
setopt autocd


#-----[ Plugins ]-----+

#zplug "softmoth/zsh-vim-mode"
#zplug "skywind3000/z.lua"
#zplug "zdharma/fast-syntax-highlighting", defer:2

PLUGINS=(
  "${PLUGDIR}/zsh-history-substring-search/zsh-history-substring-search.zsh"
  "${PLUGDIR}/dracula/dracula.zsh-theme"
  "${PLUGDIR}/powerlevel10k/powerlevel10k.zsh-theme"
  "${PLUGDIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
  "${PLUGDIR}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
)

for _plugin in "${PLUGINS[@]}"; do
  [[ ! -r "${_plugin}" ]] || source "${_plugin}"
done

# zsh-autosuggestions
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# zsh-completions
fpath=($fpath "${PLUGDIR}/zsh-completions/src")

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "~/.config/zsh/.zshrc"

#-----[ History ]-----+
HISTFILE="${CACHEDIR}/zsh_history"
HISTSIZE=20000
SAVEHIST=20000

[[ -d "${CACHEDIR}" ]] || mkdir -p "${CACHEDIR}"
[[ -f "${HISTFILE}" ]] || <> "${HISTFILE}"

setopt SHARE_HISTORY

#-----[ Aliases ]-----+
ALIASES=(
  la='ls -la --color=auto'
  lla='ls -lah --color=auto'
  ll='ls -lh --color=auto'
  ls='ls --color=auto'
  l='ls --color=auto'
  grep='grep --color=auto'
)

for _alias in "${ALIASES[@]}"; do
  alias "${_alias}"
done

# Load aliases and shortcuts if existent.
#[ -f "~/.config/shell-config/aliasrc" ] && source "~/.config/shell-config/aliasrc"

# variables -------------------------------------

autoload -Uz compinit
compinit


#https://gnunn1.github.io/tilix-web/manual/vteconfig/
# support colors in less ------------------------



#export LESS_TERMCAP_mb=$'\E[01;31m'   # mb   Start blinking
#export LESS_TERMCAP_md=$'\E[01;31m'    # md   Start bold mode
#export LESS_TERMCAP_me=$'\E[0m'       # me   End all mode like so, us, mb, md, and mr


#export LESS_TERMCAP_ue=$'\E[0m'       # ue   End underlining
#export LESS_TERMCAP_us=$'\E[01;32m'    # us   Start underlining

# Standout-mode - info box
#export LESS_TERMCAP_so=$'\e[33;5;246m' # so   Start standout mode
#export LESS_TERMCAP_se=$'\E[0m'       # se   End standout mode

# Less Colors for Man Pages
#export LESS_TERMCAP_mb=$'\e[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\e[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\e[0m'           # end mode
#export LESS_TERMCAP_se=$'\e[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\e[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\e[0m'           # end underline
#export LESS_TERMCAP_us=$'\e[04;38;5;146m' # begin underline


# vi mode ---------------------------------------
#bindkey -v

#https://github.com/softmoth/zsh-vim-mode#mode-sensitive-cursor-styling
#MODE_CURSOR_VICMD="green block"
#MODE_CURSOR_VIINS="#20d08a blinking bar"
#MODE_CURSOR_SEARCH="#ff00ff blinking underline"
#
#MODE_INDICATOR_VIINS='%F{15}<%F{8}INSERT<%f'
#MODE_INDICATOR_VICMD='%F{10}<%F{2}NORMAL<%f'
#MODE_INDICATOR_REPLACE='%F{9}<%F{1}REPLACE<%f'
#MODE_INDICATOR_SEARCH='%F{13}<%F{5}SEARCH<%f'
#MODE_INDICATOR_VISUAL='%F{12}<%F{4}VISUAL<%f'
#MODE_INDICATOR_VLINE='%F{12}<%F{4}V-LINE<%f'
#
#export KEYTIMEOUT=30

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
