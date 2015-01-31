def palindromes(min, max)
  array = []
  multiplier = 999
  while (max >= 100)
    if (max*multiplier).to_s.reverse == (max*multiplier).to_s
      array << max*multiplier
      max -= 1
      multiplier = max
    else
      multiplier -= 1
    end
  end
  print array.sort.max
end

palindromes(100, 999)
