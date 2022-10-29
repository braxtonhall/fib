#!/bin/sh
wget -O Fib.scala https://raw.githubusercontent.com/braxtonhall/fib/main/entries/jyoo980/scala/Fib.scala
echo "println(fib($1))" >> Fib.scala
scala Fib.scala
rm ./Fib.scala
