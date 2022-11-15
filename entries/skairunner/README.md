# What is it

A Fibonacci generator that produces a valid Protobuf3 file.

Each message is Fibonacci#, where # is the number in the sequence (i.e. f(#)).
The field "number" has a field number corresponding to the value of f(#) and a random type.

The field `prevprev` has the type of the message corresponding to f(n-2) and has a field number of the value of f(n-2).
Similarly, the field "prev" has the type of the message for f(n-1) and the field number of f(n-1).

Fibonacci1 does not have `prevprev`/`prev` because field numbers have to be greater than 0.
Fibonacci2 does not have `prevprev` for the same reason, while `prev` is omitted because duplicate field numbers are forbidden and f(1) = f(2).
Fibonacci3 does not have `prevprev` either.

The last sequence number generated is 43, because after that the field numbers become too large and are illegal.

## Running
With `cargo` installed on your system, `cargo run` will compile and output the protobuf file to stdout.

To verify that the protobuf compiles, something like
```
cargo run > fib.proto && protoc -odescriptors.proto fib.proto
```
should work. Note that you will need `protoc` to do that.