#!/bin/bash
# Script 4: Log File Analyzer
# Author: MOHD OWAIS | Course: Open Source Software
# Purpose: Reads a log file line by line, counts occurrences
#          of a keyword, and prints matching lines

# --- Accept command line arguments ---
LOGFILE=$1              # First argument: path to the log file
KEYWORD=${2:-"error"}   # Second argument: keyword to search for
                        # If no keyword given, defaults to "error"

# --- Counter variable to track matches ---
COUNT=0

# --- Check if the log file was provided and exists ---
if [ -z "$LOGFILE" ]; then
    # -z checks if the variable is empty
    echo "Usage: bash script4.sh <logfile> [keyword]"
    echo "Example: bash script4.sh testlog.txt error"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    # ! -f checks if the file does NOT exist
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# --- Check if the file is empty ---
if [ ! -s "$LOGFILE" ]; then
    # ! -s checks if the file has zero size
    echo "Warning: File '$LOGFILE' is empty. Nothing to analyze."
    exit 1
fi

echo "============================================"
echo "          Log File Analyzer                 "
echo "============================================"
echo "  File    : $LOGFILE"
echo "  Keyword : $KEYWORD"
echo "--------------------------------------------"
echo ""

# --- While loop: read the file line by line ---
while IFS= read -r LINE; do
    # IFS= preserves whitespace in each line
    # -r prevents backslash from being interpreted

    # Check if the current line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))   # Increment counter by 1
    fi

done < "$LOGFILE"   # Feed the file into the while loop

# --- Print the summary ---
echo "  Result  : Keyword '$KEYWORD' found $COUNT times"
echo ""

# --- Show the last 5 lines that match the keyword ---
echo "--------------------------------------------"
echo "  Last 5 matching lines:"
echo "--------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "============================================"
echo "          Analysis Complete."
echo "============================================"
