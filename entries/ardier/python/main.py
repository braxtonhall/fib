def fib_helper(entry: int) -> int:
    return 1 if entry in {1,2} else fib_helper(entry-1) + fib_helper(entry-2)


def fib(entry: int) -> int:
    return 0 if entry == 0 else(-fib_helper(abs(entry)) if (entry < 0 and (entry %2 == 0)) else fib_helper(abs(entry)))


if __name__ == "__main__":
    for i in range(-20, 20):
        print(f'The fib value for {i} is {fib(i)}')