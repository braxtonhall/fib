
open import Agda.Builtin.Nat
open import Agda.Builtin.List
open import Agda.Builtin.Reflection

data Fib : Nat → Nat → Set where
  instance F0 : Fib 0 0
  instance F1 : Fib 1 1
  instance Fk : ∀ {k n m} → ⦃ Fib k n ⦄ → ⦃ Fib (suc k) m ⦄ → Fib (suc (suc k)) (n + m)

fib' : ∀ k {n} → ⦃ Fib k n ⦄ → Nat
fib' k {n} ⦃ fib ⦄ = n

macro
  fib : Term → Term → TC _
  fib t hole = unify hole (def (quote fib') (arg i t ∷ []))
    where i = arg-info visible (modality relevant quantity-ω)

{- Get the [n]th Fibonacci number by normalization via C-n `fib [n]`. -}
