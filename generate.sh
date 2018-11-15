#!/bin/bash
# Parameters: number of code words, then optional prefix word (for voter category)
while read line
do
	echo -n $line
	echo -n ' '
	./code.sh $1 $2
done
