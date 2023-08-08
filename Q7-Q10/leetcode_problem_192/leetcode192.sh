#!/bin/bash

declare -A m

while read LINE
do
	line=$LINE
	for k in $line
	do
            m["$k"]=$((${m["$k"]}+1))      		
	done
done  < words.txt

for key in ${!m[*]};
do
	echo $key ${m[$key]};
done | sort -r -k2 -n

