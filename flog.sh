 ##!/bin/bash

# Create output files
MULTIPLES_FILE="multiples_of_3.txt"
LOG_FILE="rest.log"

# Clear previous contents of the output files
> $MULTIPLES_FILE
> $LOG_FILE

# Create 10 files and write numbers into them
for i in {1..10}; do
    FILENAME="file$i.txt"
    echo "Creating $FILENAME..."

    # Add numbers from 1 to 10 into each file
    for number in {1..10}; do
        echo "$number" >> "$FILENAME"
    done
done

# Process numbers from all files
for i in {1..10}; do
    FILENAME="file$i.txt"

    while read -r number; do
        # Check if the number is a multiple of 3
        if (( number % 3 == 0 )); then
            echo "$number" >> $MULTIPLES_FILE
        else
            echo "$number" >> $LOG_FILE
        fi
    done < "$FILENAME"
done

echo "Processing complete!"

