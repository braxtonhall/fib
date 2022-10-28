#!/usr/bin/env python3

import sys
import time

def fib(n):
    if n <= 1:
        time.sleep(n)
    else:
        fib(n - 1)
        fib(n - 2)


start = time.time_ns()
try:
    n = int(sys.argv[-1])
except ValueError:
    n = 5
fib(n)
now = time.time_ns()
result = round((now - start) / 1000000000)
print(f"fib({n}) = {result}")
