public class ThetaFibN {

	//Fibonacci(n) is asymptotically in ϴ(Fibonacci(n))
	public int Fibonacci(int n) {
		String reference = "0";
		int fib = 1;
		for(int i = 1; i <= n; i++) {
			fib = reference.length();
			reference = reference.replace("0", "").replace("1", "0") + "1".repeat(fib);
		}
		return fib;
	}
}
