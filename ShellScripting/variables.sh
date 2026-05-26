#!/bin/bash/

# to execute any program in shell scripting : sh script.sh
#ex: sh variables.sh

# Hello world program in Shell Scripting.
# echo in shell scripting is similar to print  pyhton/java/C language.
echo "hello world"


how to declare variable
#Exmaple1:
name1="Vinitha"
name2=sasidhar
age=31.212
echo "$name1"
echo "$name2"
echo "$age"

#Example2
name="Vinitha"
age="28"
Qualification="BTech"
Occupation="SoftwareEngineer"
echo "My Individual details: name: $name, age:$age, Qualification:$Qualification, Occupation:$Occupation"

#Example3: passiing values using command line arguments
person1=$1
person2=$2
echo "He is Mr $person1 working for AMD in the project XXX and she is MRS $person2 working for NVIDIA in the project YYY"

#Example4: Entering value at run time using read command
echo "please enter your name"
read user_name  #Here user_name is variable, Whatever you enter in the terminal, stores in this variable.
echo "username is $user_name"

#Example5: Entering username and passoword
echo "please enter your name"
read user_name 
echo "please enter your password"
read -s password_1
echo "username is $user_name"
echo "your password is $password_1

#Exmaple6: Reading system variables and using it program
#syntax: variable = $(system_variable)
timstamp=$(date)
echo $timstamp

#Exmaple7: Reading system variables and using it program
#take time in seconds
timstamp_start=$(date +%s)
echo "$timstamp_start"

#Exmaple8: Reading system variables and using it program
#take time in seconds and calculating time difference
timestamp_start=$(date +%s)
echo "Start time: $timestamp_start"
sleep 600
timestamp_end=$(date +%s)
echo "end time: $timestamp_end"
executed_time=$(($timestamp_end-$timestamp_start))
echo "Total executed time: $executed_time"

