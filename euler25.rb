# The 12th term, F12, is the first term to contain three digits.
#
# What is the first term in the Fibonacci sequence to contain 1000 digits?

def digits_of_answer(digits)
  n = 0
  previous = 0
  i = 1



  while i.to_s.length < digits
    n += 1
    i, previous = previous, previous + i
  end

  (n-1)
end

puts digits_of_answer(1000)
