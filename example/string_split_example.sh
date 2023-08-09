#!/bin/bash

str1="My score is "
math=90
english=87.5
str1=$str1$math
echo $str1

for k in $str1
do
    echo $k
done

IFS=','
str2="My,score,is,90."
for k in $str2
do
    echo $k
done

for k in $str1
do   
    echo $k
done

#read -a arr <<< $str1
#for str in ${arr[@]};
#do
#  echo $str 
#done


