#!/bin/bash
# This checks if operating system is in Linux or not. 
if [ "$(uname)" == "Linux" ]; then
	echo "Operating system is Linux." # This prints this message if in Linux.
else 
	echo "Error: Operating system is not Linux." >> linux.setup.log #This is log error message to linux.setup.log if not in Linux. 
	exit 1 #This is the exit with error code of not Linux. 
fi 

mkdir -p ~/".TRASH" #This creates .TRASH directory if it does not exist already in home directory. 
#Rename .vimrc file if it exists and log message.
if [ -f ~/.vimrc]; then 
	mv ~/.vimrc ~/.bup_vimrc #This is renaming .vimrc to .bup_vimrc. 
	echo "Current .vimrc file was changed to .bup_vimrc ." >> linuxsetup.log #This is log message to linuxsetup.log. 
fi 
#This redirects etc/vimrc ~/.vimrc in the home directory. 
sudo cp /etc/vimrc ~/.vimrc 
#This adds source ~/.dotfiles /etc/bashrc_custom to end of .bashrc file in home directory.
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
