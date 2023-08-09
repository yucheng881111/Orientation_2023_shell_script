#!/bin/bash

declare -a Indexed


declare -A Associative

Indexed[0]=car
Indexed[1]=plane
Indexed[2]=bike

Associative[color]=blue
Associative[type]=car
Associative[topspeed]=200

for key in ${!Associative[@]}
do
  echo "$key": "${Associative[$key]}"
done


