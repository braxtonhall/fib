def fib(index):
	if (index < 0):
		raise IndexError("Error: index must be >= 0")

	prev = 1
	curr = 1
	for _ in range(index - 1):
		temp = curr
		curr += prev
		prev = temp
	return curr

if __name__ == "__main__":
	print(fib(5))
