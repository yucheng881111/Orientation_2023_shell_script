#!/bin/bash

lscpu | awk '{
		if ($1=="Architecture:")
			print $0
		else if ($1=="CPU(s):")
			print $0
		else if ($1=="Model" && $2=="name:")
			print $0
	}'

