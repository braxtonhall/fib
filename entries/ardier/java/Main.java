import java.util.HashSet;

public class Main {
    private static HashSet<Integer> BASE_CASE;

    public static void main(String[] args) {
        BASE_CASE = new HashSet<Integer>();
        BASE_CASE.add(1);
        BASE_CASE.add(2);

        for (int i = -20; i < 20; i++) {
            System.out.println("The fib value for " + i + " is " + fib(i));
        }
    }

    private static int fib(int entry) {
        return entry == 0 ? 0 : ((entry < 0 && entry % 2 == 0) ? -fibHelper(Math.abs(entry)) : fibHelper(Math.abs(entry)));
    }

    private static int fibHelper(int entry) {
        return BASE_CASE.contains(entry) ? 1 : fibHelper(entry - 1) + fibHelper(entry - 2);
    }
}