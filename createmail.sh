#!/bin/sh
echo 'From: Voting bot <hello@mydata.org>'
echo 'To: ' $1
echo 'Subject: Your INDIVIDUAL MEMBER voting code for MyData meeting Nov 15 2018'
echo
echo 'You need the following voting code to vote in the meeting. Keep it safe.'
echo
echo '------------------------------------------'
echo 'Code: ' $2 $3 $4 $5 $6 $7 $8
echo '------------------------------------------'
echo
echo 'Cast your vote here when instructed to do so: http://bit.ly/mydata-voting-2018'
echo
echo '-- '
echo 'This email was sent by SVS (Simple Voting System)'
echo ''
echo
