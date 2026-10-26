#!/bin/bash

# Print your name
echo "Michael Hungbo"

# Create a folder titled your name
mkdir michael_hungbo

# Create a directory titled `biocomputing` and change to that directory with one line of command
mkdir biocomputing && cd biocomputing

# Download these 3 files:
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.fna
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk
wget https://raw.githubusercontent.com/HackBio-Internship/Bash_NGS_Starters/refs/heads/main/biocomp_samp/wildtype.gbk

# Move the .fna file to the folder titled your name
mv wildtype.fna ../michael_hungbo/

# Delete the duplicate gbk file
rm wildtype.gbk.1

# Confirm if the .fna file is mutant or wild type (tatatata vs tata)
cd .. && cd michael_hungbo && grep 'tatatata' wildtype.fna

# If mutant, print all matching lines into a new file
grep 'tatatata' wildtype.fna > mutant.fna

# Count number of lines (excluding header) in the .gbk file
cd .. && cd biocomputing
tail -n +2 wildtype.gbk | wc -l
awk 'NR > 1 {count++} END {print count}' wildtype.gbk

# Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
awk '/^LOCUS/ {print $3; exit}' wildtype.gbk 

# Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
awk '/^SOURCE/ {print $2 " " $3; exit}' wildtype.gbk

# List all the gene names of the .gbk file. Hint {grep '/gene='}
grep '/gene=' wildtype.gbk

# Clear your terminal space and print all commands used today
clear && history

# List the files in the two folders
cd michael_hungbo && ls -lh
cd biocomputing && ls -lh
