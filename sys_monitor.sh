#!/bin/bash

clear
echo "=========================================="
echo "         SYSTEM HEALTH REPORT             "
echo "=========================================="
echo "Date & Time : $(date)"
echo "Host Name   : $(hostname)"
echo "------------------------------------------"

echo "[+] RAM Usage Status:"
free -h | awk 'NR==1{print "       " $2,$3,$4} NR==2{print "RAM:   " $2,$3,$4}'
echo "------------------------------------------"

echo "[+] CPU Load Average:"
uptime | awk -F'load average:' '{print "Load:" $2}'
echo "------------------------------------------"

echo "[+] Disk Space Available:"
df -h / | awk 'NR==2{print "Usage: " $3 " / " $2 " (" $5 ") "}'
echo "=========================================="
