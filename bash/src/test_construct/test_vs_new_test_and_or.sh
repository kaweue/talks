#!/usr/bin/env bash
# START OMIT
a="Gdansk"
b="Warszawa"
c="Warszawa"
[ $a != $b && $b == $c ]
# END OMIT
echo "exit_status = $?"