
def fibonacci(n):
    if n == 1 or n == 0:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)

    
def main():
    n = int(input('Insert n: '))
    print('Fibonacci (',n,') =', fibonacci(n))

if __name__ == "__main__":
    main()