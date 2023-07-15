## standard
func fib(n: Natural): Natural =
  if n < 2:
    return n
  else:
    return fib(n-1) + fib(n-2)

## tail-recursive
func fib2(n: int, a = 0, b = 1): int =
  if n == 0: a else: fib2(n-1, b, a+b)

## iterable
iterator fib3: int =
  var a = 0
  var b = 1
  while true:
    yield a
    swap a, b
    b += a

## compile-time, list stuff
import std/sugar
static:
  proc scan[T, U](list: var seq[T], first, second: U, fun: (U, U) -> U) =
    var prev = (first, second)
    for i, elem in list:
      list[i] = fun(prev[0], prev[1])
      prev[0] = prev[1]
      prev[1] = list[i]

  proc fib4(n: int): seq[int] =
    result = newSeq[int](n)
    result.scan(0, 1, (p, c) => p + c)

## stupid. macro expansions, outputs (0+1)+((0+1)+(0+1)) etc
import std/macros
macro fib5(n: static[int]): untyped =
  var a = quote do: 0
  var b = quote do: 1
  for _ in 0 ..< n:
    swap a, b
    b = infix(a, "+", b)
  return a
