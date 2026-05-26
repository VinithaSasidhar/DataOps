#!/bin/bash

echo "========== CREATE LOG FILE =========="

echo "Application Started" >> app.log


echo "========== OVERWRITE LOG FILE =========="

echo "New Log Started" > app.log


echo "========== APPEND LOG FILE =========="

echo "Application Running" >> app.log


echo "========== LOG WITH DATE AND TIME =========="

echo "$(date) : Backup Started" >> app.log


echo "========== CUSTOM DATE FORMAT =========="

echo "$(date '+%Y-%m-%d %H:%M:%S') : Backup Completed" >> app.log


echo "========== STORE LOG FILE IN VARIABLE =========="

LOGFILE="application.log"

echo "$(date) : Script Started" >> $LOGFILE


echo "========== SUCCESS LOGGING =========="

mkdir demo > success.log


echo "========== ERROR LOGGING =========="

mkdir /demo 2> error.log


echo "========== APPEND ERROR LOG =========="

mkdir /demo 2>> error.log


echo "========== COMBINE OUTPUT AND ERROR LOGS =========="

ls /test > output.log 2>&1


echo "========== MODERN SHORTCUT FOR ALL LOGGING =========="

ls /test &> combined.log


echo "========== VIEW COMPLETE LOG FILE =========="

cat app.log


echo "========== VIEW FIRST 10 LINES =========="

head app.log


echo "========== VIEW LAST 10 LINES =========="

tail app.log


echo "========== LIVE LOG MONITORING =========="

# Press CTRL + C to stop

# tail -f app.log


echo "========== SEARCH ERROR IN LOG FILE =========="

grep "ERROR" app.log


echo "========== CASE INSENSITIVE SEARCH =========="

grep -i "error" app.log


echo "========== COUNT ERRORS =========="

grep -c "ERROR" app.log


echo "========== SEARCH MULTIPLE WORDS =========="

grep "WARNING" app.log


echo "========== FILTER LIVE LOGS =========="

# tail -f app.log | grep ERROR


echo "========== ROTATE LOG FILE =========="

mv app.log app.log.old

touch app.log


echo "========== COMPRESS OLD LOG FILE =========="

gzip app.log.old


echo "========== DELETE OLD LOG FILES =========="

find /logs -name "*.log" -mtime +7 -delete


echo "========== LOG FUNCTION =========="

LOGFILE="script.log"

log_message() {

    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" >> $LOGFILE

}

log_message "Application Started"

log_message "Backup Completed"


echo "========== CHECK ERRORS IN LOG FILE =========="

ERROR_COUNT=$(grep -c "ERROR" app.log)

if [ $ERROR_COUNT -gt 5 ]
then
    echo "Too many errors found"
fi


echo "========== REAL TIME LOG MONITORING SCRIPT =========="

# tail -f app.log | while read line
# do
#
#     echo $line
#
#     echo $line | grep "ERROR"
#
#     if [ $? -eq 0 ]
#     then
#         echo "Error Found!"
#     fi
#
# done


echo "========== SERVICE LOGGING =========="

systemctl status nginx >> service.log 2>&1


echo "========== BACKUP LOGGING =========="

tar -czvf backup.tar.gz /data >> backup.log 2>&1


echo "========== DISK USAGE LOGGING =========="

df -h >> disk.log


echo "========== LOGIN HISTORY LOGGING =========="

last >> login.log


echo "========== REDIRECTION OPERATORS =========="

echo ">     : Overwrite Output"
echo ">>    : Append Output"
echo "2>    : Error Output"
echo "2>>   : Append Error Output"
echo "2>&1  : Redirect Error to Output"
echo "&>    : Redirect All Output"