#!/bin/bash

#while true ; do
YmdDateTime=`date '+%Y%m%d%H%M'`
   if /sbin/ifconfig br0 | grep -q "inet addr:" ; then
	echo "$YmdDateTime: wlan OK" 
	sleep 1
	#sleep 60
   else
	echo "$YmdDateTime Network connection down! Attempting reconnection."
        /sbin/ifup --force br0
   fi
#done
