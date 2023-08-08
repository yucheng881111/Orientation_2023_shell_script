#!/bin/bash

ALL_PROCESS=$(ls /proc/ | egrep '[0-9]+')

running=0
stopped=0
sleeping=0
zombie=0

for pid in ${ALL_PROCESS[*]}
do
  test -f /proc/$pid/status && state=$(egrep "State" /proc/$pid/status | awk '{print $2}')
  case "$state" in
    R)
      running=$((running+1))
    ;;
    T)
      stopped=$((stopped+1))
    ;;
    S)
      sleeping=$((sleeping+1))
    ;;
    Z)
      zombie=$((zombie+1))
    ;;
  esac
done

echo -e "running: $running\nstopped: $stopped\nsleeping: $sleeping\nzombie: $zombie\n"


