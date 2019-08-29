#!/usr/bin/env bash
# START OMIT
let "num = (( 0 && 1 ))"
# END OMIT
echo "exit_status: $?"
echo "num: $num"