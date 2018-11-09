# Simple voting system by Tarmo Toikkanen
# Make sure /usr/share/dict/words exists. On Debian it is found in package "miscfiles".
# Also make sure the command sendEmail can send email. On Debian it is found in package "sendemail".

# Run the following commands to generate and send out codes.

# 0. Edit createmail.sh to contain the message you want to send.
# The command is commented out so this file can be run non-interactively.
#vim createmail.sh

echo Generating codes...
# 1. Generate voting codes into a temporary file.
cat emails.txt |./generate.sh >codes.csv

echo Sending emails...
# 2. Send codes to recipients via email.
cat codes.csv |./send.sh

echo Creating checklist...
# 3. Extract the code checklist
cat codes.csv |./printcodes.sh |sort >checklist.txt

echo Cleaning up...
# 3. Remove the codes to ensure votes cannot be tracked.
rm codes.csv
