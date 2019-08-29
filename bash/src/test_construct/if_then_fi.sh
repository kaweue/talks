#!/usr/bin/env bash
# START OMIT
a="Gdansk"
b="Warszawa"

if [ $a == $b ]; then
    echo "Equal"
else
    echo "Not equal"
fi
# END OMIT

echo "exit_status: $?"