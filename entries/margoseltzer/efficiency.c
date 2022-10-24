unsigned long foo(unsigned long n) {
     if (n < 2) return (n);
     return(foo(n - 1) + foo(n - 2));
}

// Efficiency of expression

unsigned long bar(unsigned long n) {
    unsigned long i, last;
    unsigned long sum, tmp;

    if (n < 2) return (n);
    last = 0;
    sum = 1;
    for (i = 2; i <= n; i++) {
        tmp = sum;
        sum += last;
        last = tmp;
    }
    return (sum);
}

// Efficiency in resource utilization
