#!/bin/bash

file=`mktemp`
echoerr() { echo "$@" 1>&2; }
# START OMIT
echoerr "error string" > "$file" 2>&1

echo "$(<$file)"
# END OMIT