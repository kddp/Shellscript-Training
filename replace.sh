#!/bin/sh

# It takes a directory name, search string and replace string as command 
# line arguments. It searches all the C source files recursively from the 
# given directory and searches for the specified string; if found, replaces 
# with the specified string.Also it backup the original file with the ‘.c.bak’ 
# extension so that we can recover our original file in case of any problems.

# searches all the C source files recursively from the given directory
for f in `find $1 -name "*.c"`;

do

# creating of backup file	
cp $f $f.bak  		

# searches for specified string and repaces it	
sed -i 's/'$2'/'$3'/g' $f 	

done
