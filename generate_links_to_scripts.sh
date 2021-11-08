#!/bin/bash

# About  
# This script will create (and update) links in the target directory to
# point to scripts in the source directory. Can be used to easily deploy
# one's own scripts in a directroy and create links to them from a
# directory that's part of the path of all users.

SOURCE_DIR=~/.config/scripts
TARGET_DIR=/usr/local/bin

# remove broken links+
pushd $TARGET_DIR
for x in * .[!.]* ..?*; do 
    # echo $x
    if [ -L "$x" ] && ! [ -e "$x" ]; then 
        # echo $x" löschen"
        sudo rm -- "$x"
    fi
done
popd

# create links
sudo ln -s $SOURCE_DIR/* $TARGET_DIR