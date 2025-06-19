#!/bin/bash
filename="pkg_list_old.txt" 
while IFS= read -r line; do
        sudo apt install -y  "$line"
done < "$filename"
