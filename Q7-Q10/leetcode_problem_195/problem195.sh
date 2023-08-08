#!/bin/bash
i=0
while read LINE
do
	i=$(($i+1));
	if [ $i -eq 10 ]
	then
		echo $LINE
	fi
done  < file.txt
