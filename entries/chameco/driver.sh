#!/bin/sh
cp fib.pl result.pl
for _ in $(seq "$1"); do
    echo "$(perl result.pl)" > result.pl
done
wc -l result.pl
