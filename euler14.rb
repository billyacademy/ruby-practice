def longest_collatz_sequence(highest_starting_number)
  starting_number = 2
  number = starting_number
  longest_chain = 0
  longest_chain_number = 0

  until starting_number == highest_starting_number
    chain = 0
    until number == 1
      if number.odd?
        number = number*3 + 1
      elsif number.even?
        number = number/2
      end
      chain += 1
      longest_chain_number, longest_chain = starting_number, chain if chain >= longest_chain
    end
      starting_number += 1
      number = starting_number
  end
  "The number with the longest chain is #{longest_chain_number}, the chain is #{longest_chain} links"
end


puts longest_collatz_sequence(1000000)
