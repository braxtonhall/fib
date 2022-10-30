func fib(n: Natural): Natural =
  if n < 2:
    return n
  else:
    return fib(n-1) + fib(n-2)

func fib2(n: int, a = 0, b = 1): int =
  return if n == 0: a else: fib2(n-1, b, a+b)

iterator fib3: int =
  var a = 0
  var b = 1
  while true:
    yield a
    swap a, b
    b += a

