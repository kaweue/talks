#!/usr/bin/env bash
# START OMIT
names=(pawel gawel piotr)

echo '${names[@]}={' "${names[@]}" '}'   #List values
echo '${names[*]}={' "${names[*]}" '}'   #List values
echo '${#names[@]}={' "${#names[@]}" '}' #Array lenght 
echo '${names[0]}={' "${names[0]}" '}'   #Get element
echo '${#names[0]}={' "${#names[0]}" '}' #Size of element
# END OMIT