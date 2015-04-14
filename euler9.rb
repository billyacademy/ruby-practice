def pythagorean_triplet(sum)
  a = 1
  b = 2

  while true
    until b == 999
      c_squared = a**2 + b**2
      if a + b + Math.sqrt(c_squared) == 1000
        return "#{a}, #{b}, #{Math.sqrt(c_squared).to_i}, the product is #{a*b*Math.sqrt(c_squared).to_i}"
      end
      b += 1
    end
    a += 1
    b = a + 1
  end

end


puts pythagorean_triplet(1000)
