#!/bin/bash

# Define command-line arguments

NAMESPACE=$1
COMMAND=$2
RESOURCE_TYPE=$3

# Retrieve resource usage statistics from Kubernetes
{
echo "Resource, Namespace, Name, CPU, Memory"

kubectl $2 $3 -n $1 | tail -n +2 | while read line

do
  # Extract CPU and memory usage from the output
  NAME=$(echo "$line" | awk '{print $1}')
  CPU=$(echo "$line" | awk '{print $2}')
  MEMORY=$(echo "$line" | awk '{print $3}')

  # Output the statistics to the console

echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, $CPU, $MEMORY"
done } | column -t -s,
