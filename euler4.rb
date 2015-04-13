require "benchmark"

time = Benchmark.realtime do
  require 'pry'
  def palindrome?(number)
    number_string = number.to_s
    length = number.to_s.length
    index = 0
    palindrome_index = length - 1
    truthiness = true

    while index < length / 2
      if number_string[index] == number_string[palindrome_index]
        index += 1
        palindrome_index -= 1
      else
        truthiness = false
        break
      end
    end
    truthiness
  end

  def largest_palindrome
    num1 = 999
    num2 = 999
    first_hit = 0
    palindrome_array = []

    while num1 > first_hit
      total = num1 * num2
      if palindrome?(total)
        palindrome_array << total
        first_hit = num2
        num1 -= 1
        num2 = num1
      else
        num2 -= 1
      end
    end
    palindrome_array.max
  end

  puts largest_palindrome



end
puts "Time elapsed #{time*1000} milliseconds"
