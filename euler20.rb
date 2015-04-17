def factorial(number)
  total = number
  until number == 1
    total = total*(number-1)
    number -= 1
  end
  total
end

def sum_of_digits(factorial)
  string_number = factorial.to_s.split('')
  sum = 0

  string_number.each do |string_digit|
    sum += string_digit.to_i
  end
  sum
end


puts sum_of_digits(factorial(100))
