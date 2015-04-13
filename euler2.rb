def fib(n)
  return n if n <= 1
  if n > 1
    return fib(n-2) + fib(n-1)
  end
end

def sum_of_even_fibs(max_result)
  total = 0
  x = 0
  until fib(x) > max_result
    if fib(x) % 2 == 0
      total += fib(x)
    end
    x += 1
  end
  total
end

puts sum_of_even_fibs(4000000)
