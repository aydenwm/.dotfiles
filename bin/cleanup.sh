#!/bin/bash
rm ~/.vimrc 
#This removes .vimrc file in the home directory.
sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc 
#This removes source ~/.dotfiles/etc/bashrc_custom line in .bashrc file in the home directory.
rm -r ~/".TRASH"
#This removes .TRASH dirctory in the home directory. 
