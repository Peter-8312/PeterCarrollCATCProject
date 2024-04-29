# This script displays various system information

#Redirect output of each command to text file
exec >> peterCarroll.txt

echo "Current Date and Time:"
date

echo "Hostname:"
hostname

echo "System Architecture:"
arch

echo "System Information:"
uname -a

echo "System Uptime:"
uptime

echo "Current User:"
whoami

echo "Logged-in Users:"
who

echo "Detailed Information about Logged-in Users:"
w

echo "Real-Time System Resource Usage:"
top

echo "Command History:"
history
