#!/bin/bash

echo "========== FOR LOOP =========="

for i in 1 2 3 4 5
do
    echo $i
done


echo "========== FOR LOOP USING RANGE =========="

for i in {1..5}
do
    echo $i
done


echo "========== REVERSE FOR LOOP =========="

for i in {5..1}
do
    echo $i
done


echo "========== C STYLE FOR LOOP =========="

for (( i=1; i<=5; i++ ))
do
    echo $i
done


echo "========== FOR LOOP WITH STRINGS =========="

for name in Ravi Sasi Ram
do
    echo $name
done


echo "========== FOR LOOP WITH FILES =========="

for file in *.txt
do
    echo $file
done


echo "========== WHILE LOOP =========="

count=1

while [ $count -le 5 ]
do
    echo $count

    count=$((count+1))
done


echo "========== INFINITE WHILE LOOP =========="

# Press CTRL + C to stop

# while true
# do
#     echo "Running..."
# done


echo "========== UNTIL LOOP =========="

count=1

until [ $count -gt 5 ]
do
    echo $count

    count=$((count+1))
done


echo "========== NESTED LOOP =========="

for i in 1 2 3
do

    for j in a b
    do
        echo "$i $j"
    done

done


echo "========== BREAK STATEMENT =========="

for i in 1 2 3 4 5
do

    if [ $i -eq 3 ]
    then
        break
    fi

    echo $i

done


echo "========== CONTINUE STATEMENT =========="

for i in 1 2 3 4 5
do

    if [ $i -eq 3 ]
    then
        continue
    fi

    echo $i

done


echo "========== READ FILE USING LOOP =========="

# file.txt should exist

while read line
do
    echo $line
done < file.txt


echo "========== ARRAY LOOP =========="

arr=("java" "python" "linux")

for i in "${arr[@]}"
do
    echo $i
done
