#!/bin/bash

#defining basic function
function greet() {
    echo "Hello World"
}

greet #function calling


#Function2
sasi() {
    echo "this is sasi(), calling function with out function keyword"
}
sasi



#Function with Parameters (Arguments)
add() {
    sum=$(( $1 + $2 ))
    echo "Addition : $sum"
}
add 10 20



#Returning Values from Function: Shell functions don't return values like Python/Java directly.
# Usually we use echo and capture output
add() {
    echo $(( $1 + $2 ))
}
result=$(add 10 20)
echo "Result : $result"



#function with local and global variable
name="sasidhar"
test() {
    local wife="vinitha"
    echo "my name is $name and my wife name is $wife"
}
test
echo "$wife" # this will not print in output


#Nested Function
hello() {
    echo "hello Sir"
}

Hai() {
    hello
    echo "you are using function inside a function"
}
Hai

