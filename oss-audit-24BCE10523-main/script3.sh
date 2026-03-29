#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Budhwani Gaurav Pratap | Course: Open Source Software
# Purpose: Loops through key system directories and reports
#          their size, owner, and permissions using a for loop

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================================"
echo "        Directory Audit Report              "
echo "============================================"
echo ""

# --- For loop: go through each directory one by one ---
for DIR in "${DIRS[@]}"; do

    # Check if the directory actually exists before inspecting it
    if [ -d "$DIR" ]; then

        # Get permissions, owner, and group using ls -ld
        # awk extracts fields: $1=permissions, $3=owner, $4=group
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # Get the total size of the directory
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        # Print the results in a readable format
        echo "Directory : $DIR"
        echo "  Size        : $SIZE"
        echo "  Permissions : $PERMS"
        echo "  Owner       : $OWNER"
        echo "  Group       : $GROUP"
        echo "--------------------------------------------"

    else
        # If directory doesn't exist, say so
        echo "Directory : $DIR — does NOT exist on this system"
        echo "--------------------------------------------"
    fi

done

# --- Bonus: Check Python's specific directory ---
echo ""
echo "============================================"
echo "   Python-Specific Directory Check          "
echo "============================================"
echo ""

# Python's library directory on Linux
PYTHON_DIR="/usr/lib/python3"

if [ -d "$PYTHON_DIR" ]; then
    # Show full details of Python's directory
    echo "Python library directory found: $PYTHON_DIR"
    echo ""
    PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1}')
    OWNER=$(ls -ld "$PYTHON_DIR" | awk '{print $3}')
    GROUP=$(ls -ld "$PYTHON_DIR" | awk '{print $4}')
    SIZE=$(du -sh "$PYTHON_DIR" 2>/dev/null | cut -f1)

    echo "  Size        : $SIZE"
    echo "  Permissions : $PERMS"
    echo "  Owner       : $OWNER"
    echo "  Group       : $GROUP"
    echo ""
    echo "Note: Python is owned by 'root' for security."
    echo "Normal users can USE Python but cannot modify"
    echo "its core files without administrator access."
else
    echo "Python directory $PYTHON_DIR not found."
fi

echo ""
echo "============================================"
echo "          Audit Complete."
echo "============================================"
