effect fib
  ctl fib(n : int) : int

fun doFib(inp : int) : div int
  with ctl fib(n)
    if n == 0 then 0
    else if n == 1 then 1
    else (doFib(n - 1) : int) + doFib(n - 2)
  fib(inp)

fun main()
  print(doFib(20))
