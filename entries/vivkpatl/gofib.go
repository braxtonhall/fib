package main

import (
    "fmt"
)

func main() {
    var n int

    fmt.Printf("Gimme an int: ")

    _, err := fmt.Scanf("%d", &n)
    if err != nil {
        panic(err)
    }

    if n <= 0 {
        panic("n must be greater than 0!") 
    }

    cache := make([]int, n + 1)
    for i := 0; i <= n; i++ {
	cache[i] = -1;
    }

    fmt.Printf("fib(%d) = %d\n", n, fib(n, cache))
}

func fib(n int, cache []int) int {
    if n < 2 {
	return n
    }

    if (cache[n] != -1) {
	return cache[n]
    }

    cache[n] = fib(n - 1, cache) + fib(n - 2, cache)

    return cache[n]
}
