#!/bin/bash

#################################################
# VARIABLES
#################################################

name="Sasi"
age=25

echo "Name : $name"
echo "Age  : $age"


#################################################
# USER INPUT
#################################################

echo "Enter your city"
read city

echo "City : $city"


#################################################
# ARITHMETIC OPERATORS
#################################################

a=20
b=10

echo "Addition       : $((a+b))"
echo "Subtraction    : $((a-b))"
echo "Multiplication : $((a*b))"
echo "Division       : $((a/b))"
echo "Modulus        : $((a%b))"


#################################################
# RELATIONAL OPERATORS
#################################################

if [ $a -gt $b ]
then
    echo "$a is Greater"
fi

if [ $a -lt $b ]
then
    echo "$a is Smaller"
fi

if [ $a -eq $b ]
then
    echo "Both are Equal"
fi


#################################################
# STRING OPERATORS
#################################################

str1="hello"
str2="world"

if [ "$str1" != "$str2" ]
then
    echo "Strings are Different"
fi


#################################################
# IF ELSE
#################################################

marks=75

if [ $marks -ge 70 ]
then
    echo "Pass"
else
    echo "Fail"
fi


#################################################
# IF ELIF ELSE
#################################################

score=85

if [ $score -ge 90 ]
then
    echo "Grade A"

elif [ $score -ge 70 ]
then
    echo "Grade B"

else
    echo "Grade C"
fi


#################################################
# FOR LOOP
#################################################

for i in 1 2 3 4 5
do
    echo $i
done


#################################################
# WHILE LOOP
#################################################

count=1

while [ $count -le 5 ]
do
    echo $count

    count=$((count+1))
done


#################################################
# UNTIL LOOP
#################################################

num=1

until [ $num -gt 5 ]
do
    echo $num

    num=$((num+1))
done


#################################################
# BREAK
#################################################

for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]
    then
        break
    fi

    echo $i
done


#################################################
# CONTINUE
#################################################

for i in 1 2 3 4 5
do
    if [ $i -eq 3 ]
    then
        continue
    fi

    echo $i
done


#################################################
# FUNCTIONS
#################################################

greet() {

    echo "Welcome $1"

}

greet Sasi


#################################################
# COMMAND LINE ARGUMENTS
#################################################

echo "First Argument  : $1"
echo "Second Argument : $2"

echo "Total Arguments : $#"

echo "All Arguments   : $@"


#################################################
# FILE HANDLING
#################################################

touch demo.txt

echo "Hello World" > demo.txt

cat demo.txt

cp demo.txt backup.txt

mv backup.txt newfile.txt

rm -f newfile.txt


#################################################
# DIRECTORY HANDLING
#################################################

mkdir testdir

ls

rm -r testdir


#################################################
# FILE CONDITIONS
#################################################

if [ -f demo.txt ]
then
    echo "File Exists"
fi

if [ -d testdir ]
then
    echo "Directory Exists"
fi


#################################################
# LOG HANDLING
#################################################

LOGFILE="app.log"

echo "$(date) : Application Started" >> $LOGFILE

echo "$(date) : Application Running" >> $LOGFILE

cat $LOGFILE


#################################################
# ERROR LOGGING
#################################################

mkdir /test 2>> error.log


#################################################
# SEARCH USING GREP
#################################################

grep "Hello" demo.txt


#################################################
# AWK
#################################################

awk '{print $1}' demo.txt


#################################################
# SED
#################################################

sed 's/Hello/Hi/g' demo.txt


#################################################
# CUT
#################################################

echo "101:Ravi:5000" > emp.txt

cut -d ":" -f2 emp.txt


#################################################
# SORT
#################################################

sort demo.txt


#################################################
# UNIQUE
#################################################

uniq demo.txt


#################################################
# WORD COUNT
#################################################

wc -l demo.txt


#################################################
# PROCESS MONITORING
#################################################

ps aux

ps aux | grep nginx


#################################################
# DISK USAGE
#################################################

df -h


#################################################
# MEMORY USAGE
#################################################

free -m


#################################################
# NETWORK CHECK
#################################################

ping -c 1 google.com


#################################################
# SERVICE MANAGEMENT
#################################################

systemctl status nginx


#################################################
# CHECK EXIT STATUS
#################################################

ls demo.txt

echo $?


#################################################
# ARRAYS
#################################################

arr=("java" "python" "linux")

echo ${arr[0]}

for i in "${arr[@]}"
do
    echo $i
done


#################################################
# CASE STATEMENT
#################################################

case $1 in

start)
    echo "Starting Service"
    ;;

stop)
    echo "Stopping Service"
    ;;

restart)
    echo "Restarting Service"
    ;;

*)
    echo "Invalid Option"
    ;;

esac


#################################################
# DATE COMMAND
#################################################

echo $(date)

echo $(date '+%Y-%m-%d %H:%M:%S')


#################################################
# FIND COMMAND
#################################################

find . -name "*.txt"


#################################################
# TAR BACKUP
#################################################

tar -czvf backup.tar.gz demo.txt


#################################################
# ZIP FILE
#################################################

gzip demo.txt


#################################################
# READ FILE LINE BY LINE
#################################################

while read line
do
    echo $line
done < emp.txt


#################################################
# CRON JOB EXAMPLES
#################################################

echo "0 2 * * * /home/ec2-user/backup.sh"

echo "*/5 * * * * /home/ec2-user/check.sh"


#################################################
# REDIRECTION
#################################################

echo "Hello" > output.txt

echo "World" >> output.txt

ls /test 2> error.txt

ls /test > all.log 2>&1


#################################################
# PIPES
#################################################

cat demo.txt | grep Hello

ps aux | grep sshd


#################################################
# SYSTEM VARIABLES
#################################################

echo $HOME
echo $USER
echo $PATH
echo $PWD
echo $SHELL


#################################################
# SCRIPT EXECUTION TIME
#################################################

start=$(date +%s)

sleep 2

end=$(date +%s)

echo "Execution Time : $((end-start)) seconds"


#################################################
# SIMPLE BACKUP SCRIPT
#################################################

backup() {

    tar -czvf backup.tar.gz $1

}

backup demo.txt


#################################################
# SIMPLE HEALTH CHECK
#################################################

if systemctl is-active --quiet nginx
then
    echo "Nginx is Running"
else
    echo "Nginx is Stopped"
fi


#################################################
# DELETE OLD LOG FILES
#################################################

find /logs -name "*.log" -mtime +7 -delete


#################################################
# LOOP THROUGH FILES
#################################################

for file in *.txt
do
    echo $file
done


#################################################
# SIMPLE MENU USING CASE
#################################################

echo "1. Start"
echo "2. Stop"
echo "3. Restart"

read option

case $option in

1)
    echo "Starting"
    ;;

2)
    echo "Stopping"
    ;;

3)
    echo "Restarting"
    ;;

*)
    echo "Invalid Choice"
    ;;

esac