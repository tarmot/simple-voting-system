#!/bin/bash

WORDFILE="./codewords"
NUMWORDS=$1
PREFIX=$2

test "$PREFIX" != "" && (echo $PREFIX;)

#Number of lines in $WORDFILE
tL=`awk 'NF!=0 {++c} END {print c}' $WORDFILE`
for i in `seq $NUMWORDS`
do
rnum=$((10*RANDOM%$tL+1))
sed -n "$rnum p" $WORDFILE|cut -d\' -f1
done
