#!/usr/bin/env bash
# START OMIT
declare -A names
names=([a]=pawel [b]=gawel [c]=piotr)

echo '${names[@]}={' "${names[@]}" '}'   #List values
echo '${names[*]}={' "${names[*]}" '}'   #List values
echo '${!names[@]}={' "${!names[@]}" '}' # List keys
echo '${#names[@]}={' "${#names[@]}" '}' # Array lenght
echo '${#names[a]}={' "${#names[a]}" '}' # Element lenght
# END OMIT