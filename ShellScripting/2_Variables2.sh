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
echo "All variables passed to script          : $@" #run the script as sh variables2.sh apple orange banana sasi
echo "Number of variables passed              : $#" #run the script as sh variables2.sh apple orange banana sasi
echo "First variable                          : $1" #run the script as sh variables2.sh apple orange banana sasi
echo "Second variable                         : $2" #run the script as sh variables2.sh apple orange banana sasi
echo "Script name                             : $0" #run the script as sh variables2.sh apple orange banana sasi

sleep 5 &
echo "PID of background command               : $!" #run the script as sh variables2.sh apple orange banana sasi

wait $!

echo "Line number                             : $LINENO"
echo "Script executed in                      : $SECONDS seconds"
echo "Random number                           : $RANDOM"