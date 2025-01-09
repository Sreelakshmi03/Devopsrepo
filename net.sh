#!/bin/bash

# Define functions for each command

# Function to display free memory
show_free_memory() {
    echo "Displaying free memory:"
    free -h
    echo
}

# Function to display disk usage
show_disk_usage() {
    echo "Displaying disk usage:"
    df -h
    echo
}

# Function to display directory sizes
show_directory_size() {
    echo "Displaying directory sizes of the current folder:"
    du -h .
    echo
}

# Function to display system information
show_system_info() {
    echo "Displaying system information:"
    uname -a
    echo
}

# Function to display running processes
show_processes() {
    echo "Displaying running processes:"
    ps aux
    echo
}

# Function to show real-time processes using top
show_top_processes() {
    echo "Launching 'top' (Press 'q' to quit):"
    top
}

# Function to ping a website
ping_website() {
    read -p "Enter the website or IP to ping: " website
    echo "Pinging $website (Press Ctrl+C to stop):"
    ping "$website"
}

# Function to display network statistics
show_netstat() {
    echo "Displaying network statistics:"
    netstat -tuln
    echo
}

# Main script to let the user call any 4 commands
echo "Choose up to 4 operations to perform:"
echo "1. Free memory (free -h)"
echo "2. Disk usage (df -h)"
echo "3. Directory sizes (du -h)"
echo "4. System information (uname -a)"
echo "5. Running processes (ps aux)"
echo "6. Real-time processes (top)"
echo "7. Ping a website (ping)"
echo "8. Network statistics (netstat)"

# Array to store user choices
choices=()

# Collect up to 4 choices
for i in {1..4}; do
    read -p "Enter choice $i (or press Enter to stop): " choice
    if [ -z "$choice" ]; then
        break
    fi
    choices+=($choice)
done

# Call functions based on user choices
for choice in "${choices[@]}"; do
    case $choice in
        1) show_free_memory ;;
        2) show_disk_usage ;;
        3) show_directory_size ;;
        4) show_system_info ;;
        5) show_processes ;;
        6) show_top_processes ;;
        7) ping_website ;;
        8) show_netstat ;;
        *) echo "Invalid choice: $choice" ;;
    esac
done

echo "Done!"

