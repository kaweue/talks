#!/bin/bash

# START OMIT
while read line; do
  echo "$line"
done <<EOF
Warszawa
Krakow
Gdansk
EOF
# END OMIT