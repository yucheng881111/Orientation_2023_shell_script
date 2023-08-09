#!/bin/bash
echo "======================================="
echo "file name    size(Bytes)    size(MB)"
echo "======================================="

ls -al files | awk 'BEGIN { size=0 } 
	$NF~/.*.pt/ {size+=$5; printf "%s    %d    %.2f\n",$NF, $5, $5/(1024*1024)}
	END {printf "=======================================\ntotal    %d    %.2f\n", size, size/(1024*1024)}
	'
