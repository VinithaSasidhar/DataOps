#!/bin/bash

echo "Current user's home directory           : $HOME"
echo "Current user name                       : $USER"
echo "Present working directory               : $PWD"
echo "Current shell                           : $SHELL"
echo "System hostname                         : $HOSTNAME" #gives the servers private ip address
echo "Operating system type                   : $OSTYPE"
echo "User ID                                 : $UID"
echo "Current process ID                      : $$"
echo "Previous command status                 : $?"
echo "Number of arguments                     : $#"
echo "All arguments                           : $@"
echo "Random number                           : $RANDOM"
echo "Executable path locations               : $PATH"
echo "All variables passed to script          : $@"
echo "Number of variables passed              : $#"
echo "First variable                          : $1"
echo "Second variable                         : $2"
echo "Script name                             : $0"

sleep 5 &
echo "PID of background command               : $!"

wait $!

echo "Line number                             : $LINENO"
echo "Script executed in                      : $SECONDS seconds"
echo "Random number                           : $RANDOM"