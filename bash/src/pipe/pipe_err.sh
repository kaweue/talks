#!/usr/bin/env bash

# START OMIT
echoerr() { echo "$@" 1>&2; }
(echoerr test test |& cat) 2>/dev/null
# END OMIT
