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

def prime(n)
  number = 1
  number_of_primes = 0

  until number_of_primes >= n
    number += 1
    if is_prime?(number)
      number_of_primes += 1
    end
  end
  number
end

puts prime(10001)
