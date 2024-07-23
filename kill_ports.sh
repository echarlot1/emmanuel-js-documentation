#!/bin/bash

# Array of ports to check and kill
ports=(6061 6062 6063 3000 3001 8080 6060)

for port in "${ports[@]}"
do
  echo "Checking port $port..."
  pid=$(lsof -ti :$port)
  if [ -n "$pid" ]; then
    echo "Killing process $pid on port $port"
    kill -9 $pid
  else
    echo "No process found on port $port"
  fi
done

