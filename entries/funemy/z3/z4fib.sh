#!/bin/bash
# z3 fib, but better

# Instructions:
#  1. having z3 installed and put under your $PATH
#  2. making sure z4fib.sh is executable, by `chmod +x z3fib.sh`
#  3. running as `./z4fib.sh [length of the fib sequence]`
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

echo "(declare-const fib (Seq Int))" >> fib.smt2
echo "" >> fib.smt2
echo "(assert" >> fib.smt2
echo "  (and" >> fib.smt2
echo "    (= (seq.len fib) $1)" >> fib.smt2
echo "    (= (seq.nth fib 0) 0)" >> fib.smt2
echo "    (= (seq.nth fib 1) 1)" >> fib.smt2
echo "    (forall ((i Int))" >> fib.smt2
echo "      (=> (and (> i 1) (< i (seq.len fib)))" >> fib.smt2
echo "        (= (seq.nth fib i)" >> fib.smt2
echo "          (+ (seq.nth fib (- i 1))" >> fib.smt2
echo "            (seq.nth fib (- i 2))))))))" >> fib.smt2
echo "" >> fib.smt2


echo "(check-sat)" >> fib.smt2
echo "(get-model)" >> fib.smt2

z3 fib.smt2
