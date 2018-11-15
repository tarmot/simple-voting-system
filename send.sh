#!/bin/sh
awk '{ comm="./createmail.sh " $1 " " $2 " " $3 " " $4 " " $5 " " $6 " " $7 " " $8 "| /usr/sbin/sendmail -i " $1; system(comm); print "Sent code to " $1 > "/dev/stderr"; }'
