def gcd(a, b)
  count = 1
  divisor_array = []

  return puts "There is no common divisor" if a == 0 || b == 0

  while count <= (a/2) || count <= (b/2)
    if a % count == 0 && b % count == 0
      divisor_array << count
      count += 1
    else
      count += 1
    end
  end
  divisor_array.max
end


puts gcd(-24, -48)
