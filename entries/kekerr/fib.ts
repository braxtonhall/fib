function fibonacci(n: number): string {
	if (n <= 0) {
		return "Surely that's a mistake! We can't give you anything interesting!";
	}

	if (n == 1) {
		return "This one's easy: [1]";
	}

	const seq = [1, 1];
	for(let i = 2; i < n; i++) {
		seq.push(seq[i-1] + seq[i-2]);
	}

	return "Fibonacci this: " + seq.toString();
}
