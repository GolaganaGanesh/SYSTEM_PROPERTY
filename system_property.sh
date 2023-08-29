#!/bin/bash


hostname=$(hostname)
memory_information=$(free -m | awk '/^Mem:/ {print "Total Memory: "$2" MB\nFree Memory: "$4" MB"}')
cpu_information=$(lscpu)
os_information=$(cat /etc/os-release)
echo "Hostname: $hostnane"
echo ""MEMORY INFO :" $memory_information"
echo "CPU Information:"
echo "$cpu_information"
echo "OS Information:"
echo "$os_information"