#!/bin/bash

beatCount=0

handleHup()

{
    beatCount=0
}
handleExit()

{
    echo "EXIT" >&2
}

trap handleHup 1
trap handleExit 0

while true
do
    let beatCount++
    echo Beep $beatCount
    sleep 5
done
