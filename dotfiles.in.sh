#!/usr/bin/env bash
#
#----------[ Manage Dotfiles Script] ------------------+
#                                                      |
#  script : dotfiles.in.sh                             |
#  author : Wilson Faustino                            |
#  e-mail : <open source (a) wmfaustino dev>           |
#  site   : http://wmfaustino.dev                      |
#  version: 2.0.1                                      |
#  date   : 26/12/2020                                 |
#  usage  : ./dotfiles.in.sh                           |
#                                                      |
#  description:                                        |
#    - creates a symlink between between all dotfiles  |
#      and the expected destination directory;         |
#    - creates a backup beforeb if dotfile already     |
#      exists                                          |
#                                                      |
#------------------------------------------------------+
#

#---------- GLOBAL VARIABLES
declare -Arg dirs=(
  ["$PWD/home"]="$HOME"
  ["$PWD/.config"]="$HOME/.config"
)

#---------- FUNCTIONS
_create_backup(){

  #local dotfile="$1"
  local backup_dir="${XDG_CONFIG_HOME:-$HOME/.config}/bkp"
  mkdir -p "$backup_dir"

  cp -RbLp "$dotfile_dest_path" "$backup_dir" && rm -rf "$dotfile_dest_path"

  printf "Dotfile Backup: %s\n\n" "${backup_dir}/${dotfile##*/}"

}

_main()(
  shopt -s dotglob

  #  $src => $PWD/.config
  for src in ${!dirs[@]}; do
    
  # $dest_dir => $HOME/.config
    dest_dir="${dirs[$src]}"

  #    $dotfile => $PWD/.config/alacritty
    for dotfile in $src/*; do
      
  #  $dotfile_dest_path => $HOME/.config/alacritty
      dotfile_dest_path="${dest_dir}/${dotfile##*/}" 
      
  #  if dotfiles already exists, create a copy before overwriting
      [[ -e $dotfile_dest_path ]] && _create_backup

  #  install dotfile
     ln -sfv $dotfile $dest_dir

    done
  done

  exit 0
)

#---------- ENTRY POINT

_main
