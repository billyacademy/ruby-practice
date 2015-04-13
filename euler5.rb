def divisible_by(first_in_rage, last_in_range)
  current_number = last_in_range

  while true
    divisible = true
    last_in_range.downto(first_in_rage) do |number|
      divisible = false if current_number % number != 0
      break if divisible == false
    end
    break if divisible == true
    current_number += last_in_range
  end

  current_number
end


puts divisible_by(1, 20)
