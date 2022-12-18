/* fib.c */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fibberoni_compute(int n, int* cache) {
    if (n < 2) {
        return n;
    }
    if (cache[n] != -1) {
        return cache[n];
    }
    cache[n] = fibberoni_compute(n - 1, cache) + fibberoni_compute(n - 2, cache);
    return cache[n];
}

int fibberoni(int n) {
    int sign, result, cache[abs(n) + 1];
    sign = (n < 0) ? -1 : 1;
    memset(cache, -1, sizeof(int) * (abs(n) + 1));
    result = fibberoni_compute(abs(n), cache);
    return sign * result;
}

void usage() {
   printf("Usage: ./fibberoni -12\n");
   exit(EXIT_FAILURE);
}

int main(int argc, char** argv) {
    int n, result;
    if (argc < 2) {
        usage();
    }
    n = atoi(argv[1]);
    result = fibberoni(n);
    printf("%d", result);
    exit(EXIT_SUCCESS);
}
