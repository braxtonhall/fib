def fib(n: Int) =
  (0 until n).foldLeft((0, 1)) {
    case ((prev, curr), _) => (curr, prev + curr)
  } match {
    case (n, _) => n
  }
