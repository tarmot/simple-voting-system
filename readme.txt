Simple voting system by Tarmo Toikkanen
Make sure the command sendEmail can send email. On Debian it is found in package "sendemail".

You should provide the list of emails in file emails.txt.
Edit createmail.sh to contain the message you need.

Perhaps first use your own test emails in the emails.txt to make sure everything works.

Execute ./doall.sh with proper parameters, eg.

./doall.sh 3
./doall.sh 2 group2

The first example creates 3 word codes.
The second example creates codes that start with the word "group2" and then continue with 2 code words.

