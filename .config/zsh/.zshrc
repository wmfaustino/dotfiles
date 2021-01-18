#-----[ Global Variables ]-----+
USER_CONFIG="${XDG_CONFIG_HOME:-$HOME/.config}"

ZDOTDIR="${USER_CONFIG}/zsh"
ZPLUGDIR="${ZDOTDIR}/plugged"

USER_CACHE="${XDG_CACHE_HOME:-$HOME/.cache}"

SHELL_CONFIG="${USER_CONFIG}/shell-config"

#-----[ Instant Prompt Powerlevel10k ]-----+
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${USER_CACHE}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${USER_CACHE}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#-----[ Basic Setup ]-----+
typeset -U path # man zshbuiltins: "keep only the first occurrence of each duplicated value" 

_comp_options+=(globdots) # Include hidden files.
setopt autocd

#-----[ Plugins ]-----+
PLUGINS=(
  "${ZPLUGDIR}/zsh-history-substring-search/zsh-history-substring-search.zsh"
  "${ZPLUGDIR}/dracula/dracula.zsh-theme"
  "${ZPLUGDIR}/powerlevel10k/powerlevel10k.zsh-theme"
  "${ZPLUGDIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
  "${ZPLUGDIR}/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
)

for _plugin in "${PLUGINS[@]}"; do
  [[ ! -r "${_plugin}" ]] || source "${_plugin}"
done

# zsh-autosuggestions
export ZSH_AUTOSUGGEST_USE_ASYNC=true
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# zsh-completions
fpath=($fpath "${ZPLUGDIR}/zsh-completions/src")

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename "~/.config/zsh/.zshrc"

#-----[ History ]-----+
HISTFILE="${USER_CACHE}/zsh_history"
HISTSIZE=20000
SAVEHIST=20000

[[ -d "${USER_CACHE}" ]] || mkdir -p "${USER_CACHE}"
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
  ssid='sudo iw dev wlp2s0b1 info' # sudo iwconfig | grep ESSID
)

for _alias in "${ALIASES[@]}"; do
  alias "${_alias}"
done

# Load aliases and shortcuts if existent.
#[ -f "~/.config/shell-config/aliasrc" ] && source "~/.config/shell-config/aliasrc"
#https://gnunn1.github.io/tilix-web/manual/vteconfig/
# support colors in less ------------------------
#[[ ! -r "${ZDOTDIR}" ]] || source 

# --- asdf
ASDF_DATA_DIR=/home/wmf/.asdf

. $ASDF_DATA_DIR/asdf.sh
# append completions to fpath
fpath=(${ASDF_DATA_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.

[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
