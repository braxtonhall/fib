# Human in the loop fibonacci

from functools import cache
import sys

req = 0
cur = 0

def compute(query, check):
    global cur, req
    while True:
        try:
            result = int(input(f"Please compute {query}: "))
            if check(result):
                break
        except ValueError:
            pass
        print("Hmm, that didn't seem right...")
    cur += 1
    print(f"Computation {cur / req:2.2%} complete.")
    return result

@cache
def add(x, y):
    return compute(f"{x} + {y}", lambda r : r - x == y)

@cache
def sub(x, y):
    return compute(f"{x} - {y}", lambda r : r + y == x)

def fib(n):
    if n <= 1:
        return n
    else:
        return add(fib(sub(n, 1)), fib(sub(n, 2)))

try:
    n = int(sys.argv[-1])
except ValueError:
    n = 10

req = 3 * (n - 1)
result = fib(n)
print(f"fib({n}) = {result}")
