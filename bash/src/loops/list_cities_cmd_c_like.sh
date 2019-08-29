#!/bin/bash

# START OMIT
cities=(Warszawa Krakow Gdansk)
i=0

while (( i < ${#cities[@]})); do
    echo "${cities[$i]}"
    (( i++ ))
done
# END OMIT