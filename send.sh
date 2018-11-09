#!/bin/sh
awk '{ comm="./createmail.sh " $1 " " $2 " " $3 " " $4 "| /usr/sbin/sendmail -i " $1; system(comm); print $2 " " $3 " " $4; print "Sent code to " $1 > "/dev/stderr"; }'
