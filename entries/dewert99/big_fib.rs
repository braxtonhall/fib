use num_bigint::{BigUint, ToBigUint};

/// Returns (fib(n-1), fib(n), fib(n+1))
fn fib_helper(n: u64) -> [BigUint; 3] {
    let [fm1, f0, f1] = if n == 0 {
        [
            1.to_biguint().unwrap(),
            0.to_biguint().unwrap(),
            1.to_biguint().unwrap(),
        ]
    } else {
        fib_helper2(n / 2)
    };
    if n % 2 == 1 {
        let [mut fm2, fm1, f0] = [fm1, f0, f1];
        fm1.clone_into(&mut fm2);
        let f1 = fm2 + &f0;
        [fm1, f0, f1]
    } else {
        [fm1, f0, f1]
    }
}

/// Returns (fib(2n-1), fib(2n), fib(2n+1))
fn fib_helper2(n: u64) -> [BigUint; 3] {
    let [fm1, fp0, fp1] = fib_helper(n);
    // f2m1 = fm1^2 + fp0^2
    // f2p0 = fp1*fp0 + fp0*fm1 = fp0*(fp1+fm1)
    // f2p1 = fp1^2 + fp0^2
    let f2p0 = (fp1.clone() + &fm1) * &fp0;
    let fp0sqr = fp0.pow(2);
    let f2m1 = fm1.pow(2) + &fp0sqr;
    let f2p1 = fp1.pow(2) + fp0sqr;
    [f2m1, f2p0, f2p1]
}

pub fn fib(n: u64) -> BigUint {
    let [_, res, _] = fib_helper(n);
    res
}
