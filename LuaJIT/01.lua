local x = os.clock()
function fibonacci(n)
  if n <= 1 then
    return n
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end
print(string.format("Fibonacci: %d\n", fibonacci(10)))
print(string.format("Tempo gasto: %f segundos\n", os.clock() - x))