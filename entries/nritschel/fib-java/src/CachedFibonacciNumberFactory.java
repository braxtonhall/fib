import java.util.HashMap;

public class CachedFibonacciNumberFactory implements FibonacciNumberFactory {
    private final HashMap<Integer, FibonacciNumber> cachedNumbers = new HashMap<>();

    @Override
    public FibonacciNumber getFibonacciNumber(int num) {
        if (!cachedNumbers.containsKey(num)) {
            cachedNumbers.put(num, new FibonacciNumber(num));
        }
        return cachedNumbers.get(num);
    }
}
