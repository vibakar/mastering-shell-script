#!/bin/bash -xev
PS4="Setting default msg for -v: "
echo "Hello"
# set -x
NAME="John"
echo "Declared name is $NAME"

# -x print commands and their arguments as they will be executed, including substitutions and expansions.
# -e exit immediately if a command exits with a non-zero status.
# -v print commands just like they appear in the script without performing substitutions and expansions.

# By default -v prepend '+', it can be changed by setting the value to PS4 variable
# if '-x' is not included on top, it can be set in between the script using 'set -x' and can be stopped using 'set +x'
