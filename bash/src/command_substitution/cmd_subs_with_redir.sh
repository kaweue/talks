#!/usr/bin/env bash
file=$(mktemp)
cat <<EOT > "$file"
Lorem ipsum dolor sit amet, 
consectetur adipiscing elit
EOT

# START OMIT
text=$(< $file)
echo "File content:"
echo "$text"
# END OMIT