def fibonacci(n)
  return n if n <= 1

  if n > 1
    return fibonacci(n-2) + fibonacci(n-1)
  end
end

puts fibonacci(5)
