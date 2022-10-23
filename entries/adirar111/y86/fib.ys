# y86 implementation of
# def fibonacci(n):
# if n <= 1:
# return n
# return fibonacci(n-1) + fibonacci(n-2)

.pos 0
main:
irmovq stack, %rsp # initialize stack pointer
irmovq $13, %rdi # %rdi = n
call fib # fib(n)
halt


fib:
irmovq $2, %rsi
irmovq $1, %rdx
rrmovq %rdi, %rcx
rrmovq %rdi, %r8

subq %rsi, %rcx # %rcx = n-2
subq %rdx, %r8 # %r8 = n-1
jle base # goto base if n <= 1

recursed:
# save to stack
pushq %r8 # %r8 = n-1

# recurse
rrmovq %rcx, %rdi # %rdi = n-2
call fib # fib(n-2)

# restore from stack
popq %r8 # %r8 = n-1

# save to stack
pushq %rax # %rax = fib(n-2)

# recurse
rrmovq %r8, %rdi # %rdi = n-1
call fib # fib(n-1)

# restore from stack
popq %r10 # r10 = fib(n-2)

addq %r10, %rax # %rax = fib(n-2) + fib(n-1)
jmp end

base:
rrmovq %rdi, %rax # return n

end:
ret

.pos 0x1000
stack:
