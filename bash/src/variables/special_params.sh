#!/bin/bash

# START OMIT
file=`mktemp`
cat<< EOF > $file
#!/bin/bash
echo '\$_ = '"\$_"   # '$#' Expands to absolute file name of the script
echo '\$\$ = '"\$\$" # '$$' Expands to the process ID of the shell
echo '\$? = '"\$?" # '$?' Exit status of the last executed command

echo '\$* = '"\$*" # '$*' Expands to the positional parameters
echo '\$@ = '"\$@" # '$@' Expands to the positional parameters

echo '\$0 = '"\$0" # '$0' Expands to the name of the shell or shell script
echo '\$1 = '"\$1" # '$1' Expands to the first paramter
echo '\$2 = '"\$2" # '$2' Expands to the second paramter
echo '\$3 = '"\$3" # '$3' Expands to the third paramter

echo '\$# = '"\$#" # '$#' Expands to the number of positional parameters in decimal
EOF

chmod +x $file
$file first second third etc
# END OMIT