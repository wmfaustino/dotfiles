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

declare -Arg dirs=(
  ["$PWD/home"]="$HOME"
  ["$PWD/.config"]="$HOME/.config"
)

# echo "${src_dirs[$PWD/home]}"


_install_dotfiles()(
  shopt -s dotglob

  for src in ${!dirs[@]}; do
    for dotfile in $src/*; do
      
      echo $src/${dotfile##*/}
      echo "${dirs[$src]}/${dotfile##*/}"
      echo
    done
  done
)

_install_dotfiles 

#for i in "${@}"; do
#
#  src_src_dirs="${i}"
#  dest="${src_dirs[${i%/*}]}" #/${i##*/}"
#    
#  ln -sfv "${src_src_dirs}" "${dest}"
   
   # ln -s ~/.local/share/dotfiles/.config/i3 ~/.config
   #ln -sfv [target file] [Symbolic filename]
 
#ln [OPTION]... -t DIRECTORY TARGET...
#done
# ------- FUNCTIONS
#function installDotfiles()(
#
#  shopt -s dotglob
#                     # src_dir keys: .config and home
#  for i in "${!src_dirs[@]}"; do
#     
#    #makeSymlink "$i"/* # * are files and src_directories
#    echo "$i"/* # * are files and src_directories
#    
#  done
#
#  exit 0
#)

#function makeSymlink(){
#           
#  for i in "${@}"; do
# 
#    src_src_dirs="${i}"
#    dest="${src_dirs[${i%/*}]}" #/${i##*/}"
#    
#    ln -sfv "${src_src_dirs}" "${dest}"
#   
#   # ln -s ~/.local/share/dotfiles/.config/i3 ~/.config
#   #ln -sfv [target file] [Symbolic filename]
# 
##ln [OPTION]... -t DIRECTORY TARGET...
#done
#
#  return 0
#}

# ENTRY POINT ---------------------------------------------
#installDotfiles
