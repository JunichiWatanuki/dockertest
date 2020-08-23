#!/bin/sh -l

echo "Hello $1"
echo "Test $2"
time=$(date)
echo "::set-output name=time::$time"

for item in ${ARRUSERLIST[@]}; do
    echo "ARRUSERLIST = ${item}"
done
