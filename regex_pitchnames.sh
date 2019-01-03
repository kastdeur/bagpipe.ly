#!/bin/bash

# Copy $FILE to $NEWFILE and replace the pitchnames
# according to the following table
#
# from | to
#   G  | g,
#   a  | a,
#   b  | b,
#   c  | cis
#   f  | fis
#   A  | a


FILE="./embellishments.ily"
NEWFILE="./embellishments-fixed.ily"
cp $FILE $NEWFILE

sed -i \
	-e "s#\(\s\)G\([0-9]*[^a-zA-Z]\)#\1g,\2#g" \
	-e "s#\(\s\)a\([0-9]*[^a-zA-Z]\)#\1a,\2#g" \
	-e "s#\(\s\)b\([0-9]*[^a-zA-Z]\)#\1b,\2#g" \
	-e "s#\(\s\)c\([0-9]*[^a-zA-Z]\)#\1cis\2#g" \
	-e "s#\(\s\)f\([0-9]*[^a-zA-Z]\)#\1fis\2#g" \
	-e "s#\(\s\)A\([0-9]*[^a-zA-Z]\)#\1a\2#g" \
	$NEWFILE
