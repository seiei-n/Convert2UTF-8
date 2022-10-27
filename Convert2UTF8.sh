#!/bin/sh
# Convert to UTF-8 for all files in the directory
set -ue
function usage() {
    echo "Usage: Convert2UTF8 [file directory] [extension]"
    echo "Example: Convert2UTF8 /Users/username/Documents txt"
    exit 1
}

if [ $# -lt 2 ]; then
    usage
fi

cd $1
for file in *; do
   VAR1=`echo $file | sed 's/^.*\.\([^\.]*\)$/\1/'`
     if [ "$VAR1" = "$2" ]; then
         echo "Converting $file to UTF-8"
         nkf -w --overwrite $file
        echo "Converted"
    else
        echo "Not converting $file"
     fi
    

done


