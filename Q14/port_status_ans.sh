#!/bin/bash

HOST=$1
PORT=$@
for PORT in ${PORT[*]};
do
  if [ "$PORT" = "$HOST" ]; then
    continue
  fi

  if echo &>/dev/null > /dev/tcp/$HOST/$PORT; then
    echo "$PORT open"
  else
    echo "$PORT close"
  fi
done


