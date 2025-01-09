#!/bin/bash

# Initialize a counter
counter=1

# Use a while loop to print numbers from 1 to 5
while [ $counter -le 5 ]
do
    echo "Number: $counter"
    ((counter++))  # Increment the counter
done

echo "While loop completed."

