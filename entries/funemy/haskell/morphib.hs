-- Fantastic Morphisms
newtype Free f = Free {unFree :: f (Free f)}

cata :: Functor f => (f a -> a) -> Free f -> a
cata phi (Free x) = phi $ fmap (cata phi) x

ana :: Functor f => (a -> f a) -> a -> Free f
ana phi x = Free $ fmap (ana phi) (phi x)

data FibF a =
      Fib0
    | Fib1
    | FibN a a
    deriving (Eq, Show)

instance Functor FibF where
    fmap f Fib0       = Fib0
    fmap f Fib1       = Fib1
    fmap f (FibN l r) = FibN (f l) (f r)

type Fib a = Free FibF

gen :: Int -> FibF Int
gen 0 = Fib0
gen 1 = Fib1
gen n = FibN (n-1) (n-2)

interp :: FibF Int -> Int
interp Fib0       = 0
interp Fib1       = 1
interp (FibN l r) = l + r

bif :: Int -> Fib Int
bif = ana gen

fib' :: Fib Int -> Int
fib' = cata interp

fib :: Int -> Int
fib = fib' . bif

main :: IO ()
main = print (fib 14)
