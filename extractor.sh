#!/bin/bash

# Read from the names.txt file
file="names.txt"
while read -r line;
   do

# Extract the username and password from the file
username=$(echo "$line" | cut -d: -f1)

# Extract the password alone
password=$(echo "$line" | cut -d: -f3)

echo $username:$password
done < "$file"
