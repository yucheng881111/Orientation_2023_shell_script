#!/bin/bash

while read LINE
do
	string=$LINE
	len=${#string}
	ok=true
	if [ $len -eq 12 ];
	then
		i=0
		while read -n 1 c 
        	do
                	if [ $i -eq 3 ] && [ "$c" != "-" ]
			then
				ok=false
				break
			elif [ $i -eq 7 ] && [ "$c" != "-" ]
			then
				ok=false
				break
			elif [ $i -ne 3 ] && [ $i -ne 7 ] && [ $i -ne 12 ]
			then
				if [ "$c" != "0" ] && [ "$c" != "1" ] && [ "$c" != "2" ] && [ "$c" != "3" ] && [ "$c" != "4" ] && [ "$c" != "5" ] && [ "$c" != "6" ] && [ "$c" != "7" ] && [ "$c" != "8" ] && [ "$c" != "9" ]
                                then	
                                    	ok=false
                                    	break
                                fi
			fi

			i=$(($i+1))
        	done <<<"$string"

	elif [ $len -eq 14 ];
	then
		i=0
                while read -n 1 c 
                do
                        if [ $i -eq 0 ] && [ "$c" != "(" ]
                        then
                                ok=false
                                break
			elif [ $i -eq 4 ] && [ "$c" != ")" ]
                        then
                                ok=false
                                break
			elif [ $i -eq 5 ] && [ "$c" != "" ]
                        then
                                ok=false
                                break
			elif [ $i -eq 9 ] && [ "$c" != "-" ]
                        then
                                ok=false
                                break
			elif [ $i -ne 0 ] && [ $i -ne 4 ] && [ $i -ne 5 ] && [ $i -ne 9 ] && [ $i -ne 14 ]
			then
				if [ "$c" != "0" ] && [ "$c" != "1" ] && [ "$c" != "2" ] && [ "$c" != "3" ] && [ "$c" != "4" ] && [ "$c" != "5" ] && [ "$c" != "6" ] && [ "$c" != "7" ] && [ "$c" != "8" ] && [ "$c" != "9" ]
                                then
					echo "$c"
					echo $i
                                    	ok=false
                                    	break
                                fi
                        fi

                        i=$(($i+1))
                done <<<"$string"
	else
		ok=false
	fi

	if [ "$ok" = true ]
	then
		echo "$string"
	fi
	
done < file.txt
