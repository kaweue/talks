#!/bin/bash

# START OMIT
for city in $(< /dev/stdin); do
  echo "$city"
done <<<"Warszawa Krakow Gdansk"
# END OMIT