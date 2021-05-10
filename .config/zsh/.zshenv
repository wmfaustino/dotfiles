
# XDG Base Directory Specification
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
# https://wiki.archlinux.org/index.php/XDG_Base_Directory

export XDG_DATA_DIRS=/usr/local/share/:/usr/share:/var/lib/snapd/desktop
export XDG_CONFIG_DIRS=/etc/xdg

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}

export XDG_SESSION_DESKTOP='awesome'

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Default Apps
export EDITOR="nvim"
export READER=""
export VISUAL=""
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export VIDEO=""
export IMAGE="nomacs"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="awesome"

# http://zsh.sourceforge.net/Guide/zshguide02.html#l24
#
path=(
	"$HOME/.local/bin"
	"$HOME/.local/scripts"
	#"/usr/local/{bin,sbin}"
	$path
)

export "GTK_IM_MODULE=cedilla"
export "QT_IM_MODULE=cedilla"

# Colored Man Pages
# Start blinking
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
# Start bold
export LESS_TERMCAP_md=$(tput bold; tput setaf 2) # green
# Start stand out
export LESS_TERMCAP_so=$(tput bold; tput setaf 3) # yellow
# End standout
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
# Start underline
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 1) # red
# End Underline
export LESS_TERMCAP_ue=$(tput sgr0)
# End bold, blinking, standout, underline
export LESS_TERMCAP_me=$(tput sgr0)

