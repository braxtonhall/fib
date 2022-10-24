#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

dataprop is_fib(int, int) =
| F0(0, 0) | F1(1, 1)
| {i, m, n : nat} Fplus(i + 2, m + n) of (is_fib(i, m), is_fib(i + 1, n))

typedef fib(i : int) = [n : nat] (is_fib(i, n) | int(n))


fun fib {t : nat} .<>. (t : int(t)) :<> fib(t) =
let
  fun go {m, n, i : nat | i <= t} .<t - i>.
         (M : is_fib(i, m), N : is_fib(i + 1, n) |
          m : int(m), n : int(n), i : int(i)) :<>
        fib(t) =
    if i = t then (M | m)
    else go(N, Fplus(M, N) | n, m + n, i + 1)
in
  go(F0, F1 | 0, 1, 0)
end

fun fib_(i : Nat) : Nat = let val (_ | res) = fib(i) in res end

implement main0 () = println!("fib(15) = ", fib_(15))
