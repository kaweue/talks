#!/bin/bash

file=`mktemp`
echoerr() { echo "$@" 1>&2; }
# START OMIT
echoerr "error string" 2>"$file"

echo "$(<$file)"
# END OMIT