#!/bin/bash
# Script 1: System Identity Report
# Author:#!/bin/bash
# Script 1: System Identity Report
# Author: Owais | Course: Open Source Software
# Purpose: Displays system information as a welcome screen

# --- Variables ---
STUDENT_NAME="MOHD OWAIS"
SOFTWARE_CHOICE="Python"

# --- Collect system information using command substitution ---
KERNEL=$(uname -r)              # Gets the Linux kernel version
USER_NAME=$(whoami)             # Gets the currently logged-in user
UPTIME=$(uptime -p)             # Gets how long the system has been running
DATE=$(date '+%d %B %Y %H:%M') # Gets current date and time, formatted nicely
DISTRO=$(lsb_release -d | cut -f2) # Gets the Linux distribution name

# --- Display the welcome screen ---
echo "============================================"
echo "       Open Source Audit — $STUDENT_NAME   "
echo "============================================"
echo ""
echo "  Software Being Audited : $SOFTWARE_CHOICE"
echo "  Linux Distribution     : $DISTRO"
echo "  Kernel Version         : $KERNEL"
echo "  Logged-in User         : $USER_NAME"
echo "  System Uptime          : $UPTIME"
echo "  Current Date & Time    : $DATE"
echo ""
echo "--------------------------------------------"
echo "  License covering this OS: GNU GPL v2"
echo "  (Linux Kernel is licensed under GPL v2)"
echo "--------------------------------------------"
echo ""
echo "  Python is licensed under the PSF License"
echo "  (Python Software Foundation License)"
echo "============================================" 

