#!/bin/bash

c=$(cat file.txt | awk 'END {print NF}');

for i in $(seq 1 $c);
do
	k=$(cut -d' ' -f $i file.txt);
	echo $k;
done

