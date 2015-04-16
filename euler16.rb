def sum_of_digits(number)
  string_number = number.to_s.split('')
  sum = 0
  string_number.each do |num|
    sum += num.to_i
  end
  sum
end

puts sum_of_digits(2**1000)
