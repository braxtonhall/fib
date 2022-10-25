#!/bin/bash

function rec () {

    if [ $2 == "0" ]; then
        :
    elif [ $2 == "1" ]; then
        [ -f "$1/$2.fib" ] || echo "🥵" > "$1/$2.fib"
    else
        [ -d "$1/$2" ] || mkdir "$1/$2"
        rec "$1/$2" $(($2 - 1))
        rec "$1/$2" $(($2 - 2))
    fi
}

if [[ $1 =~ ^[0-9]+$ ]]; then
    rec $(pwd) $1
    find $(pwd)/$1 -type f | wc -l
else
    echo "Please provide a natural number!"
    exit 1
fi
