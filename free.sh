#!/bin/bash

# Define the threshold percentage
THRESHOLD=20

# Get total and free memory using the `free` command
TOTAL_MEM=$(free | grep Mem | awk '{print $2}')
FREE_MEM=$(free | grep Mem | awk '{print $4 + $6 + $7}') # Includes available memory

# Calculate free memory percentage
FREE_PERCENT=$((FREE_MEM * 100 / TOTAL_MEM))

echo "Free Memory Percentage: $FREE_PERCENT%"

# Check if free memory is below the threshold
if [ "$FREE_PERCENT" -le "$THRESHOLD" ]; then
    echo "ALERT: Free memory is below the threshold of $THRESHOLD%!"
else
    echo "Memory status is healthy."
fi

