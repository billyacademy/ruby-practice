require 'pry'
def triangle_num_divisors(num_divisors)
  number_of_divisors = 0
  triangle_number = 1
  increase_by = 1


  until number_of_divisors > num_divisors
    divisor = 1
    divisor_count = 0
    increase_by = increase_by.next
    triangle_number += increase_by

    until divisor > triangle_number / 2
      if triangle_number % divisor == 0
        divisor_count += 1
        if divisor_count == (num_divisors + 1)
          break
        end
      end
      divisor += 1
    end
  end
  triangle_number
end


puts triangle_num_divisors(500)
