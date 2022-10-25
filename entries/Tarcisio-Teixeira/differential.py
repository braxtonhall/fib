from sympy import *

def fib(n):
  x = symbols('x')
  f = diff(1/(1-x-x**2),x,0)
  fact = 1
  for i in range(1,n):
    f = diff(f,x)
    fact *= i
  return f.subs(x,0)/fact
