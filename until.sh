#!/bin/bash

# Define the correct password
correct_password="shell123"

# Initialize the user input variable
user_input=""

# Use an until loop to keep asking until the correct password is entered
until [ "$user_input" == "$correct_password" ]
do
    read -sp "Enter the password: " user_input
    echo
    if [ "$user_input" != "$correct_password" ]; then
        echo "Incorrect password. Try again!"
    fi
done

echo "Access granted!"

