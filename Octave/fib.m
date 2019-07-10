function f = fib(n)
  if n < 2 
    f = n;
    return 
  else f = fib(n-1) + fib(n-2);
  end
end