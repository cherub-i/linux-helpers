#! /bin/sh

# About  
# As a simple way to keep private data out of public code
# repositories, define the data you need as variables in a file called
# config.sh in the same directory as the script and place that file in
# the same directory as the script.  
# Use the code below to load config.sh and to provide defaults vor the
# variables.  
# Make sure, not exclude the config.sh from the repo (.gitignore).


## config
# general
CURRENT_DIRECTORY="$(dirname $0)"
CONFIG_FILE="$CURRENT_DIRECTORY/config.sh"
if [ -f "$CONFIG_FILE" ]; then
    . "$CONFIG_FILE"
fi

VAR1=${VAR1:-'var1 default'}
VAR2=${VAR2:-'var2 default'}
