const MAX: usize = 94;

const fn fibc<const N: usize>() -> [u64; N] {
    let mut res = [0; N];
    res[1] = 1;
    let mut i = 2;
    while i < N {
        res[i] = res[i - 1] + res[i - 2];
        i += 1;
    }
    res
}

static FIB: [u64; MAX] = fibc();

pub fn fib(n: usize) -> Option<u64> {
    if n > MAX {
        None // Fib of n wouldn't fit in 64-bits
    } else {
        Some(FIB[n])
    }
}
