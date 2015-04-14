def is_prime?(n)
    return n > 1 if n <=3
    return false if n % 2 == 0 || n % 3 == 0

    i = 5
    while i*i <= n
    return false if (n % i == 0 || n % (i + 2) == 0)
      i += 6
    end

    true
end


def sum_of_primes(below_number)
  number = 0
  sum = 0

  until number == below_number
    if is_prime?(number)
      sum += number
    end
    number += 1
  end
  sum
end


puts sum_of_primes(2000000)
