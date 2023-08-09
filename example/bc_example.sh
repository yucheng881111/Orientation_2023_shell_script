#!/bin/bash

n=1

e=$(echo "scale=5; e($n)" | bc -l)
echo "exponential e = $e"

