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
    curl -X POST https://erfurt.heartbeat.sh/beat/$USER
    sleep 5
done

# Jetzt kommt wichtgier code, der nicht unterbrochen werden darf.
trap "" 2 3

# Kdo 1
# Kdo 2
# Kdo 3
# Reset the trapping
trap - 2 3