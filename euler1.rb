def three_and_five(range)
  total = 0
  for x in range
    if x % 3 == 0 || x % 5 == 0
      total += x
    end
  end
  total
end

puts three_and_five(1..999)
