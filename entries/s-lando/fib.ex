defmodule Fib do
  # elegant
  def fib(n) when n < 2, do: n
  def fib(n), do: fib(n - 1) + fib(n - 2)

  
  # less elegant
  def fib2(n) do
    fib2(n, 0, 1)
  end

  def fib2(n, current, next) do
    cond do
      n == 0 -> current
      n == 1 -> next
      true -> fib2(n - 1, next, current + next)
    end
  end
  
end
