#!/bin/bash

# Display the menu
echo "Select an operation to perform:"
echo "1. Check free memory (free -m)"
echo "2. Check disk usage (df -h)"
echo "3. Check directory size (du -h)"
echo "4. System information (uname -a)"
read -p "Enter your choice (1/2/3/4): " choice

# Perform operations based on the input
case $choice in
    1)
        echo "Free memory details (in MB):"
        free -m
        ;;
    2)
        echo "Disk usage details:"
        df -h
        ;;
    3)
        echo "Directory size details of the current folder:"
        du -h .
        ;;
    4)
        echo "System information:"
        uname -a
        ;;
    *)
        echo "Invalid choice. Please select a valid option (1/2/3/4)."
        ;;
esac

