#!/usr/bin/env bash
#
#----------[ Manage Dotfiles Script] ------------------+
#                                                      |
#  script : dotfiles.in.sh                             |
#  author : Wilson Faustino                            |
#  e-mail : <open source (a) wmfaustino dev>           |
#  site   : http://wmfaustino.dev                      |
#  version: 1.0.1                                      |
#  date   : 13/08/2020                                 |
#  usage  : ./dotfiles.in.sh                           |
#                                                      |
#------------------------------------------------------+
#

# ------- VARIABLES
            # each directory have dotfiles inside
	    # src dest
declare -Arg dirs=(
    ["${PWD}"/.config]="${HOME}/.config"
    ["${PWD}"/home]="${HOME}"
)

# ------- FUNCTIONS
function installDotfiles()(

  shopt -s dotglob
                     # dir keys: .config and home
  for i in "${!dirs[@]}"; do
     
    makeSymlink "$i"/* # * are files and directories
    
  done

  exit 0
)

function makeSymlink(){
           
  for i in "${@}"; do
 
    src="${i}"
    dest="${dirs[${i%/*}]}" #/${i##*/}"
    
    ln -sfv "${src}" "${dest}"
   
   # ln -s ~/.local/share/dotfiles/.config/i3 ~/.config
   #ln -sfv [target file] [Symbolic filename]
 
#ln [OPTION]... -t DIRECTORY TARGET...
done

  return 0
}

# ENTRY POINT ---------------------------------------------
installDotfiles
