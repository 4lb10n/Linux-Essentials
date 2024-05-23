#!/bin/bash

trap "echo Nope >&2" 2

while true
do
    echo Beep
    sleep 5
done
