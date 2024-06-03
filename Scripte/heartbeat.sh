#!/bin/bash

#trap "echo Nope >&2" 1 2 3 15 

while true
do
    echo Beep
    sleep 5
done

# Jetzt kommt wichtgier code, der nicht unterbrochen werden darf.
trap "" 2 3

# Kdo 1
# Kdo 2
# Kdo 3
# Reset the trapping
trap - 2 3