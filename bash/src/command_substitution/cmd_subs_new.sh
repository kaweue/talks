#!/usr/bin/env bash
file=$(mktemp)
cat <<EOT > "$file"
Lorem ipsum dolor sit amet, 
consectetur adipiscing elit
EOT

# START OMIT
text=$(cat $file)
echo "File content:"
echo "$text"
# END OMIT