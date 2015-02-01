def factorial(num)
  total = num
  while num > 1
    total = total*(num-1)
    num -= 1
  end
  total
end

p factorial(10)
