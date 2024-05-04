#!/bin/bash
# This script displays various system information

#Redirect output of each command to text file
exec >> peterCarroll.txt

echo "Shellscript for CATC Project"

echo


echo

echo "Current Date and Time:"
date

echo

echo "Hostname:"
hostname

echo

echo "System Architecture:"
arch

echo

echo "System Information:"
uname -a

echo

echo "System Uptime:"
uptime

echo

echo "Current User:"
whoami

echo

echo "Logged-in Users:"
who

echo

echo "Detailed Information about Logged-in Users:"
w

echo

echo "Real-Time System Resource Usage:"
top

echo

echo "Command History:"
history
