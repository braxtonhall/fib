import java.util.Random;

public class fib {
    public static int lazy_fib_generator(int num) {
        if (num == 0 || num == 1) return 1;
        return lazy_fib_generator(num - 1) + lazy_fib_generator(num - 2);
    }

    public static void lazy_fib_fuzzer(int num_of_trials) {
        Random ran = new Random();
        for (int i = 0; i < num_of_trials; i++) {
            try {
                int val = ran.nextInt();
                System.out.format("Input value: %d \n", val);
                lazy_fib_generator(val);
            } catch (Throwable t) {
                System.out.format("%s This is the price of being lazy!!\n", t);
            }
        }
    }

    public static void main(String[] args) {
        lazy_fib_fuzzer(10);
    }
}
