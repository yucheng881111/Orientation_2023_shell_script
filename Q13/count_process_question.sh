#!/bin/bash

ALL_PROCESS=$(ls /proc/ | egrep '[0-9]+')

running=0
stopped=0
sleeping=0
zombie=0

for pid in ${ALL_PROCESS[*]}
do
  test -f /proc/$pid/status && state=$(egrep "State" /proc/$pid/status | awk '{print $2}')
  case $state in
    # TODO
    # if $state == "R": running++
    # elif $state == "T": stopped++
    # elif $state == "S": sleeping++
    # elif $state == "Z": zombie++
  esac
done

echo -e "running: $running\nstopped: $stopped\nsleeping: $sleeping\nzombie: $zombie\n"


