#!/bin/sh
echo 'From: Voting bot <info@okf.fi>'
echo 'To: ' $1
echo 'Subject: Your voting code for the TEST meeting '
echo
echo 'You need the following voting code to vote in the meeting. Keep it safe.'
echo
echo 'Your voting code: ' $2 $3 $4 $5 $6
echo
echo 'Cast your vote here when instructed to do so: LINK-TO-BOTE'
echo 'The same code and link are used for all closed votings that take place in the meeting.'
echo
echo '-- '
echo 'This email was sent by SVS (Simple Voting System)'
echo ''
echo
