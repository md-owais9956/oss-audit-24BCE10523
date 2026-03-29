#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: MOHD OWAIS | Course: Open Source Software
# Purpose: Asks the user 3 questions interactively and generates
#          a personalised open source philosophy statement,
#          then saves it to a .txt file

# --- Alias concept demonstrated ---
# In a real shell session you could define:
# alias manifest='bash script5.sh'
# This would let you type 'manifest' instead of 'bash script5.sh'
# Aliases make long commands shorter and more memorable

echo "============================================"
echo "    Open Source Manifesto Generator         "
echo "============================================"
echo ""
echo "Answer three questions to generate your"
echo "personal open source manifesto."
echo ""

# --- Read user input interactively ---
# 'read -p' displays a prompt and waits for the user to type

read -p "1. Name one open-source tool you use every day: " TOOL
echo ""

read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
echo ""

read -p "3. Name one thing you would build and share freely: " BUILD
echo ""

# --- Get current date and logged-in username ---
DATE=$(date '+%d %B %Y')         # Formats date as: 26 March 2026
USERNAME=$(whoami)               # Gets the current Linux username

# --- Define the output filename ---
# String concatenation: combining "manifesto_" + username + ".txt"
OUTPUT="manifesto_${USERNAME}.txt"

# --- Compose the manifesto paragraph and write to file ---
# '>' creates the file (overwrites if exists)
# '>>' appends to the file (adds without overwriting)

echo "Writing your manifesto to $OUTPUT..."
echo ""

# Write the manifesto to the file
echo "============================================" > "$OUTPUT"
echo "   MY OPEN SOURCE MANIFESTO                " >> "$OUTPUT"
echo "   By: $USERNAME | Date: $DATE             " >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

# String concatenation to build the paragraph using user's answers
echo "Every day, I rely on $TOOL — a tool built" >> "$OUTPUT"
echo "not for profit, but for people. To me, freedom" >> "$OUTPUT"
echo "means $FREEDOM. That belief shapes how I think" >> "$OUTPUT"
echo "about software and knowledge." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Open source taught me that the most powerful" >> "$OUTPUT"
echo "things in technology were not locked behind" >> "$OUTPUT"
echo "paywalls — they were shared openly by people" >> "$OUTPUT"
echo "who believed others deserved access too." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "One day, I will build $BUILD and share it" >> "$OUTPUT"
echo "freely — because knowledge grows when it is" >> "$OUTPUT"
echo "given away, not hoarded." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "This is my commitment to open source." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"
echo "   Signed: $USERNAME | $DATE               " >> "$OUTPUT"
echo "============================================" >> "$OUTPUT"

# --- Display the saved manifesto ---
echo "============================================"
echo "   Manifesto saved to: $OUTPUT"
echo "============================================"
echo ""
cat "$OUTPUT"   # cat reads
