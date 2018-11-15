#!/bin/sh
# Options: number of code words, and optional prefix word
./words.sh $1 $2 | tr '\n' ' '
echo
