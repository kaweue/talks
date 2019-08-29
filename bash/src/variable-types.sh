#!/usr/bin/env bash

# START OMIT
a=1234 # an "integer"
let "a += 6" # arithmetic operation 
echo "a = $a"
(( "a += 10" )) # arithmetic operation 
echo "a = $a"

str="abc"
(( "str = str + 10" )) # bash sets the "integer value" of a string to 0.
echo "str = $str"
# END OMIT