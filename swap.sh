#!/bin/sh

# It takes a file as input. The file contains the first name and the last 
# name separated by colon(:).The program should reverse the order of names, 
# i.e. last name and first name. Also, it should sort the last names in the  
# alphabetical order.

grep -v "#" $1 | sort -t':' -k2 | awk -F: '{print $2,":",$1}' > namesout.txt
