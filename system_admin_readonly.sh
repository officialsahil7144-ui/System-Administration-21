#!/usr/bin/env bash 
echo "Distribution:" 
cat /etc/os-release | grep -E '^(NAME|VERSION)=' 
echo 
echo "Package manager:" 
if command -v apt >/dev/null 2>&1; then apt --version | head -n 1 
elif command -v dnf >/dev/null 2>&1; then dnf --version | head -n 1 
elif command -v pacman >/dev/null 2>&1; then pacman --version | head -n 1 
else echo "No supported package manager detected"; fi 
echo 
echo "Logrotate version:" 
if command -v logrotate >/dev/null 2>&1; then logrotate --version | head -n 1; else echo "logrotate not 
installed"; fi 
echo 
echo "Recent system messages (permission may limit output):" 
journalctl -n 5 --no-pager 2>&1 | tail -n 5 
