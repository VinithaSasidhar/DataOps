#!/bin/bash

#################################################
# CHECK EXIT STATUS USING $?
#################################################

ls demo.txt

if [ $? -eq 0 ]
then
    echo "Command Executed Successfully"
else
    echo "Command Failed"
fi


#################################################
# SIMPLE ERROR HANDLING
#################################################

mkdir testdir

if [ $? -ne 0 ]
then
    echo "Failed to Create Directory"
else
    echo "Directory Created Successfully"
fi


#################################################
# EXIT SCRIPT ON ERROR
#################################################

set -e

echo "Script Started"

ls demo.txt

echo "Script Completed"


#################################################
# DEBUG MODE
#################################################

set -x

a=10
b=20

echo $((a+b))

set +x


#################################################
# CUSTOM ERROR MESSAGE
#################################################

file="sample.txt"

if [ ! -f $file ]
then
    echo "ERROR : File Does Not Exist"
    exit 1
fi


#################################################
# HANDLE FILE NOT FOUND
#################################################

filename="data.txt"

if [ -f $filename ]
then
    cat $filename
else
    echo "ERROR : $filename not found"
fi


#################################################
# HANDLE DIRECTORY NOT FOUND
#################################################

dir="backup"

if [ -d $dir ]
then
    echo "Directory Exists"
else
    echo "ERROR : Directory Does Not Exist"
fi


#################################################
# HANDLE COMMAND FAILURE
#################################################

cp file1.txt /backup/

if [ $? -ne 0 ]
then
    echo "Copy Failed"
    exit 1
fi


#################################################
# LOG ERRORS TO FILE
#################################################

mkdir /test 2>> error.log


#################################################
# STORE BOTH OUTPUT AND ERROR
#################################################

ls /test > output.log 2>&1


#################################################
# SILENT ERROR HANDLING
#################################################

rm temp.txt 2>/dev/null


#################################################
# FUNCTION BASED ERROR HANDLING
#################################################

check_status() {

    if [ $? -ne 0 ]
    then
        echo "ERROR : Previous Command Failed"
        exit 1
    fi

}

mkdir demo

check_status


#################################################
# VALIDATE USER INPUT
#################################################

echo "Enter Age"
read age

if ! [[ $age =~ ^[0-9]+$ ]]
then
    echo "ERROR : Please Enter Numbers Only"
    exit 1
fi


#################################################
# CHECK EMPTY INPUT
#################################################

echo "Enter Name"
read name

if [ -z "$name" ]
then
    echo "ERROR : Name Cannot Be Empty"
    exit 1
fi


#################################################
# CHECK REQUIRED ARGUMENTS
#################################################

if [ $# -lt 2 ]
then
    echo "Usage : ./script.sh arg1 arg2"
    exit 1
fi


#################################################
# HANDLE DIVISION BY ZERO
#################################################

a=10
b=0

if [ $b -eq 0 ]
then
    echo "ERROR : Division By Zero Not Allowed"
else
    echo $((a/b))
fi


#################################################
# CHECK SERVICE STATUS
#################################################

systemctl is-active --quiet nginx

if [ $? -eq 0 ]
then
    echo "Nginx is Running"
else
    echo "ERROR : Nginx is Stopped"
fi


#################################################
# CHECK INTERNET CONNECTIVITY
#################################################

ping -c 1 google.com > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "Internet is Working"
else
    echo "ERROR : No Internet Connection"
fi


#################################################
# CHECK DISK SPACE
#################################################

disk=$(df -h / | awk 'NR==2 {print $5}' | cut -d "%" -f1)

if [ $disk -gt 80 ]
then
    echo "WARNING : Disk Usage Above 80%"
fi


#################################################
# CHECK MEMORY USAGE
#################################################

memory=$(free | awk '/Mem/ {print $3/$2 * 100.0}')

echo "Memory Usage : $memory%"


#################################################
# ERROR HANDLING USING trap
#################################################

trap 'echo "ERROR OCCURRED"; exit 1' ERR

ls demo.txt


#################################################
# CLEANUP USING trap
#################################################

cleanup() {

    echo "Cleaning Temporary Files"

    rm -f temp.txt

}

trap cleanup EXIT


#################################################
# CHECK MULTIPLE FILES
#################################################

for file in file1.txt file2.txt file3.txt
do

    if [ ! -f $file ]
    then
        echo "ERROR : $file Missing"
    fi

done


#################################################
# RETRY LOGIC
#################################################

count=0

until ping -c 1 google.com > /dev/null 2>&1
do

    count=$((count+1))

    echo "Retry Attempt : $count"

    if [ $count -eq 5 ]
    then
        echo "ERROR : Server Unreachable"
        exit 1
    fi

    sleep 2

done


#################################################
# HANDLE FAILED BACKUP
#################################################

tar -czvf backup.tar.gz /data > backup.log 2>&1

if [ $? -ne 0 ]
then
    echo "ERROR : Backup Failed"
    exit 1
else
    echo "Backup Successful"
fi


#################################################
# CHECK DATABASE CONNECTION
#################################################

mysql -u root -p password -e "show databases" > /dev/null 2>&1

if [ $? -ne 0 ]
then
    echo "ERROR : Database Connection Failed"
fi


#################################################
# HANDLE APPLICATION HEALTH CHECK
#################################################

curl -f http://localhost:8080 > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "Application is Healthy"
else
    echo "ERROR : Application Down"
fi


#################################################
# DEBUG SCRIPT EXECUTION
#################################################

bash -x script.sh


#################################################
# COMMON EXIT CODES
#################################################

echo "0   : Success"
echo "1   : General Error"
echo "2   : Misuse of Command"
echo "126 : Permission Problem"
echo "127 : Command Not Found"
echo "130 : Script Terminated"


#################################################
# BEST PRACTICES
#################################################

echo "1. Always Check Exit Status"
echo "2. Use Meaningful Error Messages"
echo "3. Log Errors to File"
echo "4. Use set -e for Critical Scripts"
echo "5. Validate User Input"
echo "6. Handle Missing Files"
echo "7. Use trap for Cleanup"