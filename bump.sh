# !/bin/bash

# Check if the argument is passed
if [ -z "$1" ]; then
    echo "Please provide the build number as an argument"
    exit 1
fi

sed -i -E "s#%define specrelease [0-9]{3}#%define specrelease $1#g" kernel.spec