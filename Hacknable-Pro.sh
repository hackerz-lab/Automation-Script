#!/bin/bash

# Automation Script for Kali Linux - "Hackerz Lab"
# Author: Marttin Saji
# GitHub: https://github.com/hackerz-lab

# Description:
# "Hackerz Lab" is a powerful automation tool designed for Kali Linux to streamline and enhance penetration testing workflows.
# This tool integrates multiple essential functions, including network scanning, subdomain enumeration, vulnerability scanning, 
# and exploit search, into a single script. It checks for required dependencies, ensuring smooth operation, and organizes 
# output into well-structured files for easy analysis. Ideal for cybersecurity professionals, bug bounty hunters, and 
# ethical hackers, this script saves time and effort by automating repetitive tasks.

# ASCII Art Title
cat << "EOF"
 _   _            _                _     _      
| | | |          | |              | |   | |     
| |_| | __ _  ___| | ___ __   __ _| |__ | | ___ 
|  _  |/ _` |/ __| |/ / '_ \ / _` | '_ \| |/ _ \
| | | | (_| | (__|   <| | | | (_| | |_) | |  __/
\_| |_/\__,_|\___|_|\_\_| |_|\__,_|_.__/|_|\___|

EOF

echo "Welcome to Hackerz Lab - Automation Tool"
echo "Author: Marttin Saji"
echo "GitHub: https://github.com/hackerz-lab"
echo

# Function to check dependencies
dependency_check() {
    echo "Checking dependencies..."
    dependencies=(nmap sublist3r searchsploit)
    for dep in "${dependencies[@]}"; do
        if ! command -v $dep &> /dev/null; then
            echo "$dep is not installed. Installing..."
            sudo apt-get install -y $dep
        else
            echo "$dep is installed."
        fi
    done
    echo "All dependencies are satisfied!"
}

# Function for network scanning
network_scan() {
    echo "Starting network scan..."
    read -p "Enter target IP or domain: " target
    mkdir -p output
    nmap -A -T4 $target -oN output/network_scan.txt
    echo "Network scan completed. Results saved in output/network_scan.txt"
}

# Function for subdomain enumeration
subdomain_enum() {
    echo "Starting subdomain enumeration..."
    read -p "Enter target domain: " domain
    mkdir -p output
    sublist3r -d $domain -o output/subdomains.txt
    echo "Subdomain enumeration completed. Results saved in output/subdomains.txt"
}

# Function for vulnerability scanning
vuln_scan() {
    echo "Starting vulnerability scan..."
    read -p "Enter target IP or domain: " target
    mkdir -p output
    nmap --script vuln $target -oN output/vuln_scan.txt
    echo "Vulnerability scan completed. Results saved in output/vuln_scan.txt"
}

# Function for exploit search
exploit_search() {
    echo "Searching for exploits..."
    read -p "Enter keyword for exploit search: " keyword
    mkdir -p output
    searchsploit $keyword | tee output/exploit_search.txt
    echo "Exploit search completed. Results saved in output/exploit_search.txt"
}

# Main menu
echo "Choose an option:"
echo "1. Check Dependencies"
echo "2. Network Scan"
echo "3. Subdomain Enumeration"
echo "4. Vulnerability Scan"
echo "5. Exploit Search"
echo "6. Exit"

read -p "Enter your choice: " choice

case $choice in
    1)
        dependency_check
        ;;
    2)
        network_scan
        ;;
    3)
        subdomain_enum
        ;;
    4)
        vuln_scan
        ;;
    5)
        exploit_search
        ;;
    6)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
esac
