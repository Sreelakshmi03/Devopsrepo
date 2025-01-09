#!/bin/bash

# Function for multiplication
multiply() {
    local num1=$1
    local num2=$2
    echo $((num1 * num2))
}

# Function for division
divide() {
    local num1=$1
    local num2=$2
    if [ $num2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
    else
        echo $((num1 / num2))
    fi
}

# Main script
echo "Welcome to the Math Operations Script!"
echo "1. Multiplication"
echo "2. Division"
read -p "Choose an operation (1 or 2): " choice

if [ "$choice" -eq 1 ]; then
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    result=$(multiply $num1 $num2)
    echo "Result of multiplication: $result"
elif [ "$choice" -eq 2 ]; then
    read -p "Enter the first number: " num1
    read -p "Enter the second number: " num2
    result=$(divide $num1 $num2)
    echo "Result of division: $result"
else
    echo "Invalid choice. Please choose either 1 or 2."
fi

