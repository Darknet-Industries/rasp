#!/bin/bash

target=$1

count=$(ping -c 4 @host | grep icmp* | wc -l )
 if [ $count -eq 0 ]
then

	echo "Host is down. Maintenance advised."

else

	echo Packets = $count
	echo "Host is alive."

#SUBJECT="Host Status"
#EMAIL="------@-----.com"
#EMAILMESSAGE="Status Report"
#echo $target> "$EMAILMESSAGE"
#../user/bin/mailx -s "$SUBJECT" "$EMAIL"< "$EMAILMESSAGE"

fi
