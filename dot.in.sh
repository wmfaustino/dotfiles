#!/usr/bin/env bash
#
#----------[ Manage Dotfiles Script] ----------------------------+
#                                                                |
#  script : dotfiles.in.sh                                       |
#  author : Wilson Faustino                                      |
#  e-mail : <open source (a) wmfaustino dev>                     |
#  site   : http://wmfaustino.dev                                |
#  version: 1.0.0                                                |
#  date   : 12/08/2020                                           |
#  usage  : ./dotfiles.in.sh                                     |
#                                                                |
#----------------------------------------------------------------+
#

# ------- VARIABLES
            # each directory have dotfiles inside
declare -Arg dirs=(
    ["${PWD}"/.config]="${HOME}/.config"
    ["${PWD}"/home]="${HOME}"
)

# ------- FUNCTIONS
function installDotfiles()(

  shopt -s dotglob
                  # $@ are the directories that contain the dotfiles
                  # ./.config and ./home
  for directory in "${@}"; do
     
    symlinkDotfiles "$directory"/*
    
  done

  exit 0
)

function symlinkDotfiles(){
              
              # $@ are the all the dotfiles
              # "$directory"/*
  for file in "${@}"; do
 
    src="${file}"
    dest="${dirs[${file%/*}]}/${file##*/}"

   #ln -sfv ~/.local/dotfiles/.config/i3 ~/.config/i3
   #ln -sfv [target file] [Symbolic filename]
    ln -sfv "${src}" "${dest}"
  
  done

  return 0
}

# ENTRY POINT ---------------------------------------------
installDotfiles "${!dirs[@]}"
