#include <iostream>
#include <cstdint>

template<std::size_t N>
struct fib {
    static constexpr std::size_t value = fib<N - 1>::value + fib<N - 2>::value;
};

template<>
struct fib<0> {
    static constexpr std::size_t value = 1;
};

template<>
struct fib<1> {
    static constexpr std::size_t value = 1;
};

template<std::size_t N>
constexpr std::size_t fib_v = fib<N>::value;

template<std::size_t N>
struct print_fib : print_fib<N - 1> {
    print_fib() noexcept {
        std::cout << fib_v<N - 1> << '\n';
    }
};

template<>
struct print_fib<0> {};

int main() {
    print_fib<32>{};
    return 0;
}