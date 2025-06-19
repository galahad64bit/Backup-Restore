#!/bin/bash
sudo apt list --installed | awk '{print $1}'| grep -v "Listing..." > apt_backup_list.txt

filename="apt_backup_list.txt"

while IFS= read -r line; do
	echo "${line%/*}" >> backup_pkg_list.txt
done < "$filename"

