package entries.kevindhir.aws;

import java.util.Arrays;

class Solution {
    public int fib(int N) {
        int[] storage = new int[9999];
        Arrays.fill(storage, -1);
        storage[0] = 0;
        storage[1] = 1;
        return fibMemoized(N, storage);
    }

    private int fibMemoized(int N, int[] storage){
        if (storage[N] != -1) return storage[N];
        int calculated = fibMemoized(N-1, storage) + fibMemoized(N-2, storage);
        storage[N] = calculated;
        return calculated;
    }

}