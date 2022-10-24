#!/bin/bash
int_regex='^[0-9]+$'
function fib(){
    if [ "$1" -le 1 ]; then
        echo $1
    else
        echo $[`fib $[$1 - 1]` + `fib $[$1 - 2]` ]
    fi
}

function main(){
    echo -n "Enter a whole number: "
    read num

    if [ -z "$num" ]; then
        echo "Uh oh! Argument required!"
    elif ! [[ "$num" =~ $int_regex ]]; then
        echo "Uh oh! Argument must be a number :|"
    elif [ "$num" -lt 0 ]; then
        echo "Uh oh! Argument must be a whole number :|"
    else
        fib $num
    fi

}

main