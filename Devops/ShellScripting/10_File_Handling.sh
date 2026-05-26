#!/bin/bash

echo "========== CREATE FILE =========="

touch file1.txt


echo "========== CREATE MULTIPLE FILES =========="

touch file2.txt file3.txt file4.txt


echo "========== WRITE DATA TO FILE =========="

echo "Hello World" > file1.txt


echo "========== APPEND DATA TO FILE =========="

echo "Welcome to Shell Scripting" >> file1.txt


echo "========== DISPLAY FILE CONTENT =========="

cat file1.txt


echo "========== DISPLAY FIRST 10 LINES =========="

head file1.txt


echo "========== DISPLAY LAST 10 LINES =========="

tail file1.txt


echo "========== LIVE FILE MONITORING =========="

# Press CTRL + C to stop

# tail -f file1.txt


echo "========== COPY FILE =========="

cp file1.txt backup.txt


echo "========== COPY DIRECTORY =========="

cp -r testdir backupdir


echo "========== RENAME FILE =========="

mv backup.txt renamed.txt


echo "========== MOVE FILE =========="

mv renamed.txt /tmp/


echo "========== DELETE FILE =========="

rm file3.txt


echo "========== DELETE DIRECTORY =========="

rm -r backupdir


echo "========== CREATE DIRECTORY =========="

mkdir testdir


echo "========== CREATE NESTED DIRECTORIES =========="

mkdir -p parent/child/grandchild


echo "========== CHANGE DIRECTORY =========="

cd /tmp


echo "========== PRINT CURRENT DIRECTORY =========="

pwd


echo "========== LIST FILES =========="

ls


echo "========== LIST FILES WITH DETAILS =========="

ls -l


echo "========== LIST HIDDEN FILES =========="

ls -la


echo "========== CHECK FILE EXISTS =========="

if [ -f file1.txt ]
then
    echo "File Exists"
fi


echo "==========