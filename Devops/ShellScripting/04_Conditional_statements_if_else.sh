#!/bin/bash/

#In Shell scripting we have if, if-else, if-elif-else, nested if, case

#simple if
age=20
if [ $age -gt 18 ]
then
    echo "Eligible to vote"
fi


#if-else
num=5
if [ $num -gt 10 ]
then
    echo "Greater"
else
    echo "Smaller"
fi

# if-elif-else:
marks=75
if [ $marks -ge 90 ]
then
    echo "Grade A"

elif [ $marks -ge 70 ]
then
    echo "Grade B"

elif [ $marks -ge 50 ]
then
    echo "Grade C"

else
    echo "Fail"
fi

#Nested if
age=25
citizen="yes"

if [ $age -ge 18 ]
then
    if [ "$citizen" = "yes" ]
    then
        echo "Eligible for voting"
    fi
fi

#Ex: using AND Operator
age=25
salary=50000

if [ $age -gt 18 ] && [ $salary -gt 30000 ]
then
    echo "Eligible for loan"
fi
