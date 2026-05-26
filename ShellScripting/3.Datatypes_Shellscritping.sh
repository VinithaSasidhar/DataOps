#!/bin/bash

# Shell scripting does not have strict data types like python, java,C Lan etc
# Everything is treated as STRING by default.

# Commonly used data forms:
# 1. String (if we declare as string or integer it will treat it as string)
# Ex:
    num1="10"
    num2=20
    num3=101

    sum=$((num1 + num2 + num3))
    echo $sum

#2. Arrays

#creating Arrays
fruits=("apple" "mango" "banana" "orange", "sasi", "vinitha")

#Accessing Array Elements
echo "Array elements are: "
echo ${fruits[0]}
echo ${fruits[1]}
echo ${fruits[2]}
echo ${fruits[3]}

#printing all elements:
echo "All elements are: ${fruits[@]}"

#length of individual element:
echo "length of first element: ${#fruits[0]}"

#length of entire array:
echo "number of elements in array: ${#fruits[@]}"

#update array element:
fruits[4]="Prabhas"
echo "Array's fifth element changed: ${fruits[@]}"

#length of entire array: Rechecking after update
echo "number of elements in array Rechecking after update: ${#fruits[@]}"

#removing element:
unset fruits[1]

#length of entire array: Rechecking after delete
echo "number of elements in array Rechecking after update: ${#fruits[@]},  ${fruits[@]} "

#printing using loop
echo "displaying fruits using loops"
for fruit in ${fruits[@]}
do 
    echo $fruit
done

#entering names from input:
echo "enter the names"
read -a names
echo "entered names are: ${names[@]}"