#!/bin/bash

echo "========== BASIC COMMAND LINE ARGUMENTS =========="

echo "First Argument  : $1"
echo "Second Argument : $2"
echo "Third Argument  : $3"


echo "========== SCRIPT NAME =========="

echo "Script Name : $0"


echo "========== TOTAL ARGUMENTS =========="

echo "Total Arguments : $#"


echo "========== ALL ARGUMENTS =========="

echo "All Arguments : $@"


echo "========== ALL ARGUMENTS AS SINGLE STRING =========="

echo "Arguments : $*"


echo "========== CURRENT PROCESS ID =========="

echo "PID : $$"


echo "========== EXIT STATUS =========="

ls sample.txt

echo "Exit Status : $?"


echo "========== STORE ARGUMENTS IN VARIABLES =========="

name=$1
age=$2

echo "Name : $name"
echo "Age  : $age"


echo "========== ADDITION USING ARGUMENTS =========="

a=$1
b=$2

sum=$((a+b))

echo "Addition : $sum"


echo "========== SUBTRACTION USING ARGUMENTS =========="

sub=$((a-b))

echo "Subtraction : $sub"


echo "========== MULTIPLICATION USING ARGUMENTS =========="

mul=$((a*b))

echo "Multiplication : $mul"


echo "========== DIVISION USING ARGUMENTS =========="

div=$((a/b))

echo "Division : $div"


echo "========== CHECK NUMBER OF ARGUMENTS =========="

if [ $# -eq 2 ]
then
    echo "Correct Number of Arguments"
else
    echo "Please Pass 2 Arguments"
fi


echo "========== LOOP THROUGH ARGUMENTS =========="

for arg in "$@"
do
    echo $arg
done


echo "========== WHILE LOOP THROUGH ARGUMENTS =========="

count=1

while [ $# -gt 0 ]
do
    echo "Argument $count : $1"

    shift

    count=$((count+1))
done


echo "========== SHIFT COMMAND =========="

echo "Before Shift"

echo $1
echo $2
echo $3

shift

echo "After Shift"

echo $1
echo $2


echo "========== STRING COMPARISON USING ARGUMENTS =========="

if [ "$1" = "$2" ]
then
    echo "Strings are Equal"
else
    echo "Strings are Not Equal"
fi


echo "========== NUMBER COMPARISON USING ARGUMENTS =========="

if [ $1 -gt $2 ]
then
    echo "$1 is Greater"
else
    echo "$2 is Greater"
fi


echo "========== FILE EXISTS CHECK =========="

if [ -f "$1" ]
then
    echo "File Exists"
else
    echo "File Does Not Exist"
fi


echo "========== DIRECTORY EXISTS CHECK =========="

if [ -d "$1" ]
then
    echo "Directory Exists"
else
    echo "Directory Does Not Exist"
fi


echo "========== READ FILE USING ARGUMENT =========="

while read line
do
    echo $line
done < $1


echo "========== COPY FILE USING ARGUMENTS =========="

# Usage:
# ./script.sh source.txt destination.txt

cp $1 $2


echo "========== MOVE FILE USING ARGUMENTS =========="

mv $1 $2


echo "========== DELETE FILE USING ARGUMENT =========="

rm -f $1


echo "========== SEARCH TEXT USING ARGUMENTS =========="

# Usage:
# ./script.sh ERROR app.log

grep $1 $2


echo "========== COUNT WORDS IN FILE =========="

wc -w $1


echo "========== COUNT LINES IN FILE =========="

wc -l $1


echo "========== SORT FILE CONTENT =========="

sort $1


echo "========== DISPLAY FIRST 5 LINES =========="

head -5 $1


echo "========== DISPLAY LAST 5 LINES =========="

tail -5 $1


echo "========== PING SERVER USING ARGUMENT =========="

ping -c 1 $1


echo "========== CHECK SERVICE STATUS =========="

systemctl status $1


echo "========== START SERVICE =========="

sudo systemctl start $1


echo "========== STOP SERVICE =========="

sudo systemctl stop $1


echo "========== RESTART SERVICE =========="

sudo systemctl restart $1


echo "========== CASE STATEMENT WITH ARGUMENTS =========="

case $1 in

start)
    echo "Starting Application"
    ;;

stop)
    echo "Stopping Application"
    ;;

restart)
    echo "Restarting Application"
    ;;

status)
    echo "Checking Status"
    ;;

*)
    echo "Invalid Option"
    ;;

esac


echo "========== BACKUP DIRECTORY USING ARGUMENT =========="

# Usage:
# ./script.sh /data

tar -czvf backup.tar.gz $1


echo "========== CREATE USER USING ARGUMENT =========="

# Usage:
# ./script.sh username

# sudo useradd $1


echo "========== LOOP THROUGH FILES PASSED AS ARGUMENTS =========="

for file in "$@"
do
    echo "Processing File : $file"
done


echo "========== REAL TIME DEVOPS EXAMPLES =========="

echo "Monitor Log File"

tail -f $1


echo "Find ERROR in Logs"

grep ERROR $1


echo "Check Disk Usage"

df -h


echo "Check Memory Usage"

free -m


echo "Check Running Processes"

ps aux


echo "========== SPECIAL VARIABLES SUMMARY =========="

echo "\$0  : Script Name"
echo "\$1  : First Argument"
echo "\$2  : Second Argument"
echo "\$3  : Third Argument"
echo "\$#  : Total Arguments"
echo "\$@  : All Arguments"
echo "\$*  : All Arguments as Single String"
echo "\$$  : Current Process ID"
echo "\$?  : Exit Status of Last Command"