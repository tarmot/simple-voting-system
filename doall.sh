# Simple voting system by Tarmo Toikkanen
# Make sure /usr/share/dict/words exists. On Debian it is found in package "miscfiles".
# Also make sure the command sendEmail can send email. On Debian it is found in package "sendemail".

# Run the following commands to generate and send out codes.

# 0. Edit createmail.sh to contain the message you want to send.

if [ -z $1 ]; then
	echo "Usage: ./doall.sh num-of-code-words [optional-prefix-word-for-group]"
	exit 1
fi
if [ $1 -lt 1] || [ $1 -gt 6 ]; then
	echo "Specify 1 to 6 code words to be used."
	exit 1
fi

#Clear out any old codes
echo >codes.csv

until ./verifynoduplicates.sh; do
	echo Generating codes...
	# 1. Generate voting codes into a temporary file.
	cat emails.txt |./generate.sh $1 $2 >codes.csv
done

echo "We have " $(wc -l emails.txt|cut -d' ' -f1) " emails."
echo "We have " $(wc -l codes.csv|cut -d' ' -f1) " unique voting codes."


echo -n "Ready to send emails (answer yes to send)? "
read answer
if [ "$answer" == "yes" ]; then

	echo Sending emails...
	# 2. Send codes to recipients via email.
	cat codes.csv |./send.sh

fi


echo Creating checklist...
# 3. Extract the code checklist
cat codes.csv |./printcodes.sh |sort >checklist.txt

echo Cleaning up...
# 3. Remove the codes to ensure votes cannot be tracked.
rm codes.csv

echo "Your final checklist of codes is in checklist.txt. Keep them safe."

