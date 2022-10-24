-- Point-less fibonacci
fib :: Int -> Int
fib = fix fib'
  where
    fib' =
      ap (when 0 . (0 ==)) .
      ap (when 1 . (1 ==)) .
      ap (ap . ((+) .) . (. subtract 1)) (. subtract 2)

    when t c e = if c then t else e

    ap mf m = mf >>= (\f -> m >>= return . f)

    fix f  = f (fix f)


main :: IO ()
main = mapM_ (print . fib) [0 .. 10]
