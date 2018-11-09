#!/bin/bash
while read line
do
	echo -n $line
	echo -n ' '
	./code.sh 2
done
