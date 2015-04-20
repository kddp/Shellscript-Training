#!/bin/sh

# It takes 2 files as input. The first file contains the name and roll number 
# of the students. The second file contains name and total marks for the students. 
# The utility merges the information present in these 2 files by having name, 
# roll number and total marks. Also, the list is sorted in descending order of total marks


if [ "$#" -ne 2 ]; then
 echo "usage:sh $0 <file1> <file2>"
exit 1

fi

sort -t' ' -k1 $1 > 1_sort_temp
sort -t' ' -k1 $2 > 2_sort_temp
join -t':' -1 1 -2 1 1_sort_temp 2_sort_temp | sort -t':' -k 3,3nr > 3.txt   

rm 1_sort_temp
rm 2_sort_temp  
exit 0                 
