# If we list all the natural numbers below 10 that are multiples of 3 or
# 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples(range)
  sum = 0
  range.each do |x|
    if x % 3 == 0 && x % 5 == 0
      sum += x
    elsif x % 5 == 0
      sum += x
    elsif x % 3 == 0
      sum += x
    else
      sum
    end
  end
    sum
end

print multiples(1..999)
