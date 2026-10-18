#!/usr/bin/env bash
set -u

echo "Read-Only System Administration"
echo "--------------------------------"

echo
echo "Operating System:"
cat /etc/os-release | grep -E '^(PRETTY_NAME|VERSION)='

echo
echo "Kernel Information:"
uname -a

echo
echo "System Uptime:"
uptime

echo
echo "Disk Usage:"
df -h

echo
echo "Memory Usage:"
free -h

echo
echo "Current User:"
whoami

echo
echo "System Administration Inspection Completed."
