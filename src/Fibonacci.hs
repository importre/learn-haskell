module Fibonacci where

fibonacci n =
  if n == 0 || n == 1
  then n
  else fibonacci(n - 1) + fibonacci(n - 2)
