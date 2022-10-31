% To my surprise, there has been no Prolog implementation submitted so far. 
% To get the ball rolling, and to pay respect to Prolog, here is a well-known Prolog implementation of the Fibonacci sequence.

% fib(N, S): S is the Nth Fibonacci number. 

:- table fib/2. 

fib(0, 1) :- !. 
fib(1, 1) :- !. 
fib(N, S) :- N > 1, 
             N1 is N-1, 
             N2 is N-2, 
             fib(N1, S1), 
             fib(N2, S2), 
             S is S1+S2.
