#!/usr/bin/env bash
BS="46K"			#Size of the archive for dd (1K, 2M, 3G...)
LIMIT=100		#Quantity of files to generate
LOCATION="./"	#Locations where the files will be created

for i in $(seq $LIMIT); do
	dd if="/dev/urandom" bs="$BS" count="1" of="$LOCATION$i.bin"
done

chmod +x *

for i in $(seq $LIMIT); do
	clear
	./"$i.bin"
	sleep 2
done
