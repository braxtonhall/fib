let memo = {1: 1};

function fib(n: number): number {
    if(n <= 0) return 0;
    if(memo[n]) return memo[n];
    memo[n] = fib(n-1) + fib(n-2);
    return memo[n];
};
