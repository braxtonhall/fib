def fibonacci(n):
    return fib_helper(n, 0, 1)

def fib_helper(n, prev, curr):
    # Base cases
    if n < 0:
        raise ValueError('Negative argument to fibonnaci')
    if n == 0:
        return prev
    if n == 1:
        return curr
    return fib_helper(n-1, curr, prev + curr)

