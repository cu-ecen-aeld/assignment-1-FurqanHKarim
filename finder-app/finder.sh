#!/bin/sh
# Tester script for assignment !


set -e 
set -u 

filesdir=/tmp/aeld_data
searchstr="something"

if [ $# -ne 2 ]
then
    echo "Arguments not given exisiting the script"
    exit 1
else
    filesdir=$1
    searchstr=$2

    if [ -d "${filesdir}" ];then
        echo "It is a directory"
    else
        echo "This is not a directory"
        exit 1
    fi

    Files=$(find ${filesdir} -type f | wc -l)
    Matches=$(grep -r ${searchstr} ${filesdir} | wc -l)
    echo "The number of files are $Files and the number of matching lines are ${Matches}"

fi