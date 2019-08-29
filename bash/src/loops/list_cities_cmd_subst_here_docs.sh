#!/bin/bash

# START OMIT
for city in $(< /dev/stdin); do
  echo "$city"
done <<EOF
Warszawa Krakow Gdansk
EOF
# END OMIT