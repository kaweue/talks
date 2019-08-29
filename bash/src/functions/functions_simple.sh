#!/usr/bin/env bash
# START OMIT
fun() { 
    echo "Gdansk"; 
    echo "Warszawa"; 
}
r=`fun`

cat<<< $r
# END OMIT
