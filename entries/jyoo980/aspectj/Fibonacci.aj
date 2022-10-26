public aspect Fibonnacci {

    pointcut mainInvocation(): call(* Main.*(*));

    void before(): mainInvocation() {
        // Nice
        int n = 69;
        System.out.println("The 69th fibonacci number is: " + fibonacci(n));
    }

    public int fibonacci(int n) {
        int prev = 0;
        int curr = 1;
        for (int i = 0; i < n; i++) {
            int tmp = prev;
            prev = curr;
            curr = prev + tmp;
        }
        return prev;
    }
}
