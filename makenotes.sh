#!/bin/bash
# Just a small script to make my notes for class.
#
#
#
#touch $(echo Morality.`date "+%Y%m%d"`)
DATE=`date "+%Y%m%d"`
if [ $# -ne 4 ]; then
    echo 1>&2 "$0: Incorrect syntax. ex. 'makenotes -c Class -l Lecture'"
    exit 2
elif [ $# -eq 4 ]; then
    while [[ $# -gt 1 ]]
    do
    key="$1"
    case $key in
        -c|--class)
        CLASS="$2"
        shift
        ;;
    
        -l|--lecture)
        LECTURE="$2"
        shift
        ;;
    esac
    shift
    done
#    echo CLASS = "${CLASS}"
#    echo LECTURE = "${LECTURE}"
#    echo DATE = "$DATE"
    mkdir -p ${CLASS}
    touch ./${CLASS}/${LECTURE}.${DATE}
#TODO: Check if we're making a duplicate, if so, add time.
    echo "Created file: ./${CLASS}/${LECTURE}.${DATE}"
fi
