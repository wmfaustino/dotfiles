
# autoload -U colors && colors # make your own color prompt


# fast-syntax-highlighting
#source "${ZDOTDIR}/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

## https://git-scm.com/book/sv/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Zsh
#autoload -Uz vcs_info
#precmd_vcs_info() { vcs_info }
#precmd_functions+=( precmd_vcs_info )
#setopt prompt_subst
#RPROMPT=\$vcs_info_msg_0_
## PROMPT=\$vcs_info_msg_0_'%# '
# zstyle ':vcs_info:git:*' formats '%b'

# Lines configured by zsh-newuser-install
HISTFILE="${HOME}/.cache/zsh/history"
HISTSIZE=20000
SAVEHIST=20000
setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install

# Load aliases and shortcuts if existent.
[ -f "$HOME/zsh/aliasrc" ] && source "$HOME/zsh/aliasrc"

# zsh-completions
fpath=($ZDOTDIR/plugins/zsh-completions.git/src $fpath)

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' menu select=0
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/wilson/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

_comp_options+=(globdots)	# Include hidden files.<Paste>

# zsh-autosuggestions
source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"


