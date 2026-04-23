> Text files that contain commands to execute by a shell are called shell scripts

>  Shell scripting allows users to automate repetitive tasks by combining multiple commands into a single file.

Shell: A program that acts as an interface between the user and the operating system's kernel, interpreting human-readable commands into instructions the OS can understand. Common shells include Bash (Bourne Again Shell), Zsh, and the original Bourne Shell (sh).

Script: A plain text file containing a sequence of commands, control flow structures (like loops and conditional statements), and variables.

Shebang: The first line of a shell script (e.g., #!/bin/bash) specifies which interpreter should be used to execute the commands in the file


################### file_text_processing ###################

cat sample.txt | wc -l

the | sends the output of the current cmd to the successor of |



The big four text tools:

grep:

Find lines containing a word = grep "word" sample.txt

Case-insensitive search = grep -i "Varun" sample.txt

Show line numbers = grep -n "Varun" sample.txt

Lines that do NOT match = grep -v "Varun" sample.txt

Count matching lines = grep -c "Varun" sample.txt

cut:

Cut the 2nd field, delimiter is comma = cut -d',' -f2 data.csv

Cut multiple fields = cut -d',' -f1,3 data.csv

Cut by character position = cut -c1-5 file.txt


sort:

Sort alphabetically = sort sample.txt

Sort numerically = sort -n sample.txt

Sort in reverse = sort -r sample.txt

Remove duplicate lines = sort -u sample.txt

Sort CSV by column 2 numerically = sort -t',' -k2 -n data.csv

sed:

# Replace first match per line
sed 's/old/new/' file.txt

# Replace ALL matches per line (global)
sed 's/old/new/g' file.txt

# Edit file in place (saves changes)
sed -i 's/old/new/g' file.txt

# Delete lines matching a pattern
sed '/error/d' file.txt

# Print only matching lines
sed -n '/warning/p' file.txt

pipelines:

# Count how many error lines in a log
grep "error" app.log | wc -l

# Get unique usernames from a CSV, sorted
cut -d',' -f1 users.csv | sort -u

# Find top 3 most common words
cat file.txt | tr ' ' '\n' | sort | uniq -c | sort -rn | head -3

# Find all .log files modified today
find . -name "*.log" -newer today.txt