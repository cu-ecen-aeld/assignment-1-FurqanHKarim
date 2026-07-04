#!/bin/sh
# Tester script for assignment !


set -e 
set -u 


if [ $# -ne 2 ] ; 
then
    echo "Arguments Incomplete"
    exit 1

fi


writefile="$1"
writestr="$2"

case "$writefile" in
    */)
        echo "This is only a directory Path, File Path is required"
        exit 1
        ;;
esac

if [ ! -e  ${writefile} ]; then
    mkdir -p "$(dirname "${writefile}")"
    touch "${writefile}"
    
fi

echo "${writestr}" > "${writefile}"
echo "File Written"





