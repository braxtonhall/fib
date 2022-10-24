public class Main {
    public static void main(String[] args) {
        if (args.length < 1) {
            System.out.println("""
                    Please provide:
                    1. fibonacci number to compute, and
                    2. (optional) the calculation method (naive or cached).""");
        }
        else {
            FibonacciNumberFactory factory;
            if (args.length >= 2 && args[1].equals("naive")) {
                factory = new NaiveFibonacciNumberFactory();
            }
            else {
                factory = new CachedFibonacciNumberFactory();
            }
            FibonacciCalculator calculator = new FibonacciCalculatorImpl(factory);
            System.out.println(factory.getFibonacciNumber(Integer.parseInt(args[0])).calculate(calculator));
        }
    }
}
