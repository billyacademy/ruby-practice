hundred_range = (1..100)

def sum_of_squares(range)
  sum = 0
  range.each do |number|
    sum += number**2
  end
  sum
end

def square_of_sum(range)
  sum = 0
  range.each do |number|
    sum += number
  end
  sum**2
end

def sum_square_difference(range)
  square_of_sum(range) - sum_of_squares(range)
end

puts sum_square_difference(hundred_range)
