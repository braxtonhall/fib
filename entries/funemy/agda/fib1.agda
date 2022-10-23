open import Agda.Builtin.Equality

data Nat : Set where
  zero : Nat
  suc : Nat -> Nat

{-# BUILTIN NATURAL Nat #-}

z : Nat
z = zero

one : Nat
one = suc zero

add : Nat → Nat → Nat
add zero y = y
add (suc x) y = suc (add x y)

fib : Nat → Nat
fib zero = zero
fib (suc zero) = suc zero
fib (suc (suc x)) = add (fib x) (fib (suc x))

fib0 : fib 0 ≡ 0
fib0 = refl

fib1 : fib 1 ≡ 1
fib1 = refl

fib2 : fib 2 ≡ 1
fib2 = refl

fib8 : fib 8 ≡ 21
fib8 = refl


