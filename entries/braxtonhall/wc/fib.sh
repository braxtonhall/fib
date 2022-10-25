#!/bin/bash

rec () {
    shopt -s nullglob dotglob

    if [ $2 == "0" ]; then
        :
    elif [ $2 == "1" ]; then
        echo "🥵" > "$1/$2.fib"
    else
        mkdir "$1/$2"
        rec "$1/$2" $(($2 - 1))
        rec "$1/$2" $(($2 - 2))
    fi
}

rec $(pwd) $1
find $(pwd)/$1 -type f | wc -l
