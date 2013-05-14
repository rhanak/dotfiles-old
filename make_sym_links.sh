#!/bin/bash - 
#===============================================================================
#
#              FILE: make_sym_links.sh
#     
#             USAGE: ./make_sym_links.sh 
#     
#       DESCRIPTION: Script creates symlinks in the users home folder to all of the 
#                    dot files that we specify in the files variable found below
#     
#             NOTES: For this to work you must have cloned the github repo to your 
#                    home folder as ~/dotfiles/ 
#
#            AUTHOR: Jarrod Taylor
#
#           CREATED: 05/14/2013 07:49:06 AM CDT
#
#          REVISION: v0.1
#
# MAINTENANCE NOTES: To add additional files/folders to be symlinked all that is 
#                    needed is to include their names in the files variable.
#===============================================================================

#==============
# Variables
#==============
dir=~/dotfiles           # Dotfiles directory
files="bashrc vimrc vim" # List of files and folders to symlink in our home folder

#==============
# Change to the dotfiles directory
#==============
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

#==============
# Create symlinks in the home folder to any files in the ~/dotfiles folder 
# that we specified in $files variable.
#==============
for file in $files; do
    echo "Creating symlink to $file in $HOME"
    ln -s $dir/$file ~/.$file
done

#==============
# Wrap it up with warm fuzzies
#==============
echo "All done enjoy"
