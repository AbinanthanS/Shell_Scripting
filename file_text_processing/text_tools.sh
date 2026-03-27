#!/bin/bash

# Text Processing Tools for Shell Scripts

# Function to count the number of lines in a file
count_lines() {
  if [ -f "$1" ]; then
    wc -l < "$1" # awk 'END {print NR}' "$1"  and < is used to remove file name in the output
  else
    echo "File not found: $1"
  fi
}

# Function to count the number of words in a file
count_words() {
  if [ -f "$1" ]; then
    wc -c < "$1" 
  else
    echo "File not found: $1"
  fi
}

echo "Total number of lines in the file: $(count_lines "sample.txt")"
echo "Total number of words in the file: $(count_words "sample.txt")"


# -l (lines) -w (words) -c (bytes[char]) -m (characters) -L (longest line)

# wc -c 
#can be used to count the number of characters (not same as -m ) in a file, including spaces and newlines. so it is also used to calculate file size in bytes.
