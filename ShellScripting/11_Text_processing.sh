#!/bin/bash

echo "========== GREP COMMAND =========="

grep "ERROR" app.log


echo "========== CASE INSENSITIVE SEARCH =========="

grep -i "error" app.log


echo "========== COUNT MATCHING LINES =========="

grep -c "ERROR" app.log


echo "========== SHOW LINE NUMBERS =========="

grep -n "ERROR" app.log


echo "========== INVERT MATCH =========="

grep -v "INFO" app.log


echo "========== SEARCH MULTIPLE FILES =========="

grep "ERROR" *.log


echo "========== AWK COMMAND =========="

awk '{print $1}' emp.txt


echo "========== PRINT SECOND COLUMN =========="

awk '{print $2}' emp.txt


echo "========== PRINT MULTIPLE COLUMNS =========="

awk '{print $1,$3}' emp.txt


echo "========== SUM OF COLUMN VALUES =========="

awk '{sum=sum+$3} END {print sum}' emp.txt


echo "========== FILTER USING CONDITION =========="

awk '$3 > 5000 {print $0}' emp.txt


echo "========== SED COMMAND =========="

sed 's/java/python/g' file.txt


echo "========== REPLACE FIRST OCCURRENCE =========="

sed 's/java/python/' file.txt


echo "========== DELETE LINE =========="

sed '2d' file.txt


echo "========== PRINT SPECIFIC LINE =========="

sed -n '3p' file.txt


echo "========== REMOVE EMPTY LINES =========="

sed '/^$/d' file.txt


echo "========== CUT COMMAND =========="

cut -d ":" -f1 data.txt


echo "========== EXTRACT SECOND FIELD =========="

cut -d ":" -f2 data.txt


echo "========== EXTRACT MULTIPLE FIELDS =========="

cut -d ":" -f1,3 data.txt


echo "========== SORT COMMAND =========="

sort names.txt


echo "========== REVERSE SORT =========="

sort -r names.txt


echo "========== NUMERIC SORT =========="

sort -n numbers.txt


echo "========== UNIQUE COMMAND =========="

uniq names.txt


echo "========== COUNT DUPLICATES =========="

uniq -c names.txt


echo "========== REMOVE DUPLICATES =========="

sort names.txt | uniq


echo "========== WC COMMAND =========="

wc file.txt


echo "========== COUNT LINES =========="

wc -l file.txt


echo "========== COUNT WORDS =========="

wc -w file.txt


echo "========== COUNT CHARACTERS =========="

wc -c file.txt


echo "========== TR COMMAND =========="

echo "hello" | tr 'a-z' 'A-Z'


echo "========== REPLACE CHARACTERS =========="

echo "welcome" | tr 'e' 'E'


echo "========== DELETE CHARACTERS =========="

echo "welcome" | tr -d 'e'


echo "========== XARGS COMMAND =========="

cat files.txt | xargs rm


echo "========== FIND COMMAND =========="

find . -name "*.txt"


echo "========== FIND AND DELETE FILES =========="

find . -name "*.log" -delete


echo "========== FIND FILES OLDER THAN 7 DAYS =========="

find /logs -name "*.log" -mtime +7


echo "========== TEE COMMAND =========="

echo "Hello World" | tee output.txt


echo "========== APPEND USING TEE =========="

echo "New Line" | tee -a output.txt


echo "========== PASTE COMMAND =========="

paste file1.txt file2.txt


echo "========== DIFF COMMAND =========="

diff file1.txt file2.txt


echo "========== CMP COMMAND =========="

cmp file1.txt file2.txt


echo "========== COLUMN COMMAND =========="

column -t data.txt


echo "========== REV COMMAND =========="

echo "hello" | rev


echo "========== SPLIT COMMAND =========="

split -l 100 bigfile.txt splitfile_


echo "========== JOIN COMMAND =========="

join file1.txt file2.txt


echo "========== HEAD COMMAND =========="

head file.txt


echo "========== TAIL COMMAND =========="

tail file.txt


echo "========== LIVE LOG MONITORING =========="

# Press CTRL + C to stop

# tail -f app.log


echo "========== PIPE OPERATOR =========="

ps aux | grep nginx


echo "========== MULTIPLE PIPELINES =========="

cat app.log | grep ERROR | wc -l


echo "========== EXTRACT PROCESS ID =========="

ps aux | grep nginx | awk '{print $2}'


echo "========== REAL TIME DEVOPS EXAMPLES =========="

echo "Find nginx process"
ps aux | grep nginx

echo "Count ERROR logs"
grep -c ERROR app.log

echo "Find high salary employees"
awk '$3 > 5000 {print $0}' emp.txt

echo "Replace production with staging"
sed 's/production/staging/g' config.txt

echo "Extract usernames"
cut -d ":" -f1 /etc/passwd