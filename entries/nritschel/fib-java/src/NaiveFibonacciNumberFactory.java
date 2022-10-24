public class NaiveFibonacciNumberFactory implements FibonacciNumberFactory {
    @Override
    public FibonacciNumber getFibonacciNumber(int num) {
        return new FibonacciNumber(num);
    }
}
