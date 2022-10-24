#!/bin/bash

# Instruction:
#  1. having z3 installed and under you $PATH
#  2. making sure z3fib.sh is executable, by `chmod +x z3fib.sh`
#  3. running as `./z3fib.sh [length of the fib sequence]`
#  4. having fun :)

if [ -e fib.smt2 ]
then
    rm -f fib.smt2
    touch fib.smt2
else
    touch fib.smt2
fi

if [ "$1" -lt "0" ]; then
  echo "Argument must be larger than 0."
  exit 1
fi

for i in $(seq 0 $1);
do
  echo "(declare-const x$i Int)" >> fib.smt2
done

echo "" >> fib.smt2

echo "(assert" >> fib.smt2
echo "  (and" >> fib.smt2

for i in $(seq 0 $1);
do
  echo "    (>= x$i 0)" >> fib.smt2
done

echo "    (= x0 0)" >> fib.smt2
if [ "$1" -ge "1" ]; then
  echo "    (= x1 1)" >> fib.smt2
fi

if [ "$1" -ge "2" ]; then
  for i in $(seq 2 $1);
  do
    echo "    (= x$i (+ x$(($i - 2)) x$(($i - 1))))" >> fib.smt2
  done
fi

echo "  )" >> fib.smt2
echo ")" >> fib.smt2

echo "" >> fib.smt2

echo "(check-sat)" >> fib.smt2
echo "(get-model)" >> fib.smt2

z3 fib.smt2
