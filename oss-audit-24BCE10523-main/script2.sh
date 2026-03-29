#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: MOHD OWAIS | Course: Open Source Software
# Purpose: Checks if Python is installed, shows its details,
#          and prints a philosophy note using a case statement

# --- Define the package to inspect ---
PACKAGE="python3-minimal"   # The package we are auditing

# --- Check if the package is installed ---
if dpkg -s $PACKAGE &>/dev/null; then
    # If installed, print confirmation and fetch details
    echo "============================================"
    echo "  Package '$PACKAGE' is INSTALLED"
    echo "============================================"
    echo ""

    # Show version, maintainer, and description from package manager
    echo "--- Package Details ---"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
    echo ""

    # Show the actual python3 version directly
    echo "--- Python Version ---"
    python3 --version
    echo ""

else
    # If not installed, inform the user
    echo "Package '$PACKAGE' is NOT installed on this system."
    echo "To install it, run: sudo apt install python3"
    exit 1   # Exit the script with an error code
fi

# --- Case statement: print philosophy note based on package name ---
echo "--- Open Source Philosophy Note ---"
case $PACKAGE in
    python3 | python3-minimal)
        echo "Python: born from frustration with closed tools,"
        echo "shared freely so every programmer could have"
        echo "a readable, powerful, open language."
        ;;
    httpd | apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql)
        echo "MySQL: open source at the heart of millions of apps."
        ;;
    firefox)
        echo "Firefox: a nonprofit fighting for an open, free web."
        ;;
    vlc)
        echo "VLC: built by students, plays everything, costs nothing."
        ;;
    git)
        echo "Git: born when proprietary version control failed Linus."
        ;;
    *)
        # Default case if package name doesn't match any above
        echo "An open source tool — built openly, shared freely."
        ;;
esac

echo ""
echo "============================================"
echo "  Inspection complete."
echo "============================================"
