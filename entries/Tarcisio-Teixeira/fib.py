def fib(n,arr={},v =-1):
    if v>=0:
        arr[n]=v
        return v
    return arr[n] if n in arr.keys() else fib(n, arr, (3*n*n*n - 9*n*n+13*n)//6 if  n <= 3 else fib(n//2-1,arr)*fib(n-n//2,arr) + fib(n//2,arr)*fib(n-n//2+1,arr))
