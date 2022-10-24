public class FibonacciCalculatorImpl implements FibonacciCalculator {
    private final FibonacciNumberFactory factory;

    public FibonacciCalculatorImpl(FibonacciNumberFactory factory) {
        this.factory = factory;
    }

    @Override
    public int calculateFibonacci(FibonacciNumber fib) {
        if (fib.getNumber() <= 2) {
            return 1;
        }
        else {
            return factory.getFibonacciNumber(fib.getNumber() - 1).calculate(this) + factory.getFibonacciNumber(fib.getNumber() - 2).calculate(this);
        }
    }
}
