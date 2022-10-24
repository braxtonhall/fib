public class FibonacciNumber {
    private final int number;
    private Integer result;

    public FibonacciNumber(int number) {
        this.number = number;
    }

    public int getNumber() {
        return number;
    }

    public int calculate(FibonacciCalculator calculator) {
        if (result == null) {
            result = calculator.calculateFibonacci(this);
        }
        return result;
    }
}
