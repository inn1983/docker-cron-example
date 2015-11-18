#!/bin/bash

#while true ; do
YmdDateTime=`date '+%Y%m%d%H%M'`
   if /sbin/ifconfig wlan0 | grep -q "inet addr:" ; then
	#echo "Network connection down! Attempting reconnection."
      	#ifup --force wlan0
	echo "$YmdDateTime: wlan OK" 
	sleep 1
	#sleep 60
   else
	echo "$YmdDateTime Network connection down! Attempting reconnection."
	/sbin/dhclient -r wlan0
        /sbin/ifup --force wlan0
      	#echo "OK"
      	#sleep 10
   fi
#done
