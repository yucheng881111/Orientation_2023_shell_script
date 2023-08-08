#!/bin/bash

nvidia-smi -q | awk 'BEGIN {cnt=1}
	{
		if ($1=="Driver" && $2=="Version") 
			printf "Driver Version: %s\n", $4
		else if ($1=="CUDA" && $2=="Version")
			printf "CUDA Version: %s\n", $4
		else if ($1=="Attached" && $2=="GPUs")
			printf "GPUs: %s\n", $4
		else if ($1=="Product" && $2=="Name"){
			printf "%d: %s %s %s %s %s\n", cnt, $4, $5, $6, $7, $8
			cnt+=1
		}
	}'
