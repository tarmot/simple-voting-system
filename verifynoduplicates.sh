#!/bin/bash
CODES=$(cat codes.csv | cut -d ' ' -f 2-|sort|uniq|wc -l)
PEOPLE=$(cat emails.txt|wc -l)

test $CODES != $PEOPLE && { echo "Duplicate check failed."; exit 1; }
echo "Duplicate check passed."
exit 0
