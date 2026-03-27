#!/bin/bash

# Create a sample file
cat > people.csv << EOF 
alice,engineer,50000
bob,designer,45000
carol,engineer,60000
dave,manager,75000
eve,designer,48000
EOF

echo "=== All engineers ==="
grep "engineer" people.csv

echo "=== Names only, sorted ==="
cut -d',' -f2 people.csv | sort

echo "=== Highest salary first ==="
sort -t',' -k3 -rn people.csv # -k3 Sorts using the 3rd column and -rn  ==  -r -n

echo "=== Replace engineer with developer ==="
sed 's/engineer/developer/g' people.csv


# The << EOF block on line 3 is called a heredoc — a handy way to write multi-line content directly into a file from within a script.