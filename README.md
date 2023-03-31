# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.

The cleanup.sh file is a script that reverses the actions performed by the linux.sh script by removing the vimrc file, removing the 'source ~/ .dotfiles/etc/bashrc-custom' statement in the bashrc file, and removing the TRASH directory.  The bashrc-custom file contains variables, and functions for a custom bash shell that allows users to customize their environment by setting up personalized shortcuts and commands. The linux.sh file is a bash script that sets up a Linux environment by creating the TRASH directory, renaming the existing vimrc file, and redirecting the etc/vimrc file to the home directory. It also checks the operating system type to ensure that it is Linux and if not, logs an error message te the "linuxsetup.log' file and exits.The vimrc file contains settings for the Vim text editor which includes settings for syntax highlighting, line numbers, indentation, and color scheme. The gitignore file is used to specify files and/or directories that should be ignored by the Git version control system which ensures that these files are not tracked to the remote repository on GitHub.The Makefile runs the two targets linux and clean.  

