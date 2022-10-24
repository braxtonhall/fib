fib :: Int -> Int
fib = (fibs !!)
  where
    fibs = 0 : 1 : [fibs !! (i - 2) + fibs !! (i - 1) | i <- [2..]]

