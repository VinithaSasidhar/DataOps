#!/bin/bash/

#Arthemitic Operators
a=20
b=10

echo "Addition: $((a+b))"
echo "Subtraction: $((a-b))"
echo "Multiplication: $((a*b))"
echo "Division: $((a/b))"
echo "Modulus: $((a%b))"


#Relational operators
a=20
b=10

echo "Equal                : $([ $a -eq $b ]; echo $?)" #  $? is used to check status of the statement
echo "Not Equal            : $([ $a -ne $b ]; echo $?)"
echo "Greater Than         : $([ $a -gt $b ]; echo $?)"
echo "Less Than            : $([ $a -lt $b ]; echo $?)"
echo "Greater or Equal     : $([ $a -ge $b ]; echo $?)"
echo "Less or Equal        : $([ $a -le $b ]; echo $?)"

#String Operators:
name1="Sasi"
name2="Ravi"
empty=""
echo "String operations"
echo "String Equal         : $([ "$name1" = "$name2" ]; echo $?)"
echo "String Not Equal     : $([ "$name1" != "$name2" ]; echo $?)"
echo "String Empty         : $([ -z "$empty" ]; echo $?)"
echo "String Not Empty     : $([ -n "$name1" ]; echo $?)"

#boolean operators
age=25
salary=50000
echo "boolean operations"
if [ $age -gt 18 ] && [ $salary -gt 30000 ]
then
    echo "AND Condition True"
fi

if [ $age -gt 18 ] || [ $salary -lt 10000 ]
then
    echo "OR Condition True"
fi

if [ ! $age -lt 18 ]
then
    echo "NOT Condition True"
fi


#file Operators
echo "file operations"
file="test.txt"
dir="mydir"

if [ -f $file ]
then
    echo "File Exists"
fi

if [ -d $dir ]
then
    echo "Directory Exists"
fi

if [ -r $file ]
then
    echo "File is Readable"
fi

if [ -w $file ]
then
    echo "File is Writable"
fi

if [ -x $file ]
then
    echo "File is Executable"
fi

if [ -s $file ]
then
    echo "File is Not Empty"
fi

#Assignment operators
echo "Assignment operations"

a=10

echo "Initial Value : $a"

a=$((a+5))
echo "After Addition : $a"

a=$((a-2))
echo "After Subtraction : $a"

a=$((a*3))
echo "After Multiplication : $a"

a=$((a/2))
echo "After Division : $a"


#increment/decrement Operators:
echo "increment/decrement operations"
count=10

echo "Original Value : $count"

((count++))
echo "Post Increment : $count"

((++count))
echo "Pre Increment : $count"

((count--))
echo "Post Decrement : $count"

((--count))
echo "Pre Decrement : $count"