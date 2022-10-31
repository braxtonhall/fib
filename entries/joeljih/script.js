function fib(n)
{
	let a = 0, b = 1, c, i;
	if( n == 0)
		return a;
	for(i = 2; i <= n; i++)
	{
	c = a + b;
	a = b;
	b = c;
	}
	return b;
}

// Driver code

let n = 25;
	
document.write(fib(n));

// This code is contributed by Mayank Tyagi, From geeksforgeeks.org


