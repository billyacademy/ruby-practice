def factorial(n)
  return 1 if n == 1
  return 2 if n == 2

  until n == 1
    return n * factorial(n-1)
  end
end

puts factorial(10)
