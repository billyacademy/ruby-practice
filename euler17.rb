require 'pry'





def one_or_two_digit_number(number)
  number_hash =
  {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty"
  }

  tens_hash = {
    2 => 'twenty',
    3 => 'thirty',
    4 => 'forty',
    5 => 'fifty',
    6 => 'sixty',
    7 => 'seventy',
    8 => 'eighty',
    9 => 'ninety'
  }
  string_number = number.to_s
  first_digit = string_number[0]
  second_digit = string_number[1]
  number_length = string_number.length
  sum = 0
  if number <= 20
    sum += number_hash[number].length
  elsif second_digit == '0' && number_length == 2
    sum += tens_hash[first_digit.to_i].length
  elsif number_length == 2
    sum += tens_hash[first_digit.to_i].length
    sum += number_hash[second_digit.to_i].length
  end
  sum
end

def three_digit_numbers(number)
  sum = 0
  number_hash =
  {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty"
  }
  string_number = number.to_s
  first_digit = string_number[0]
  second_digit = string_number[1]
  third_digit = string_number[2]
  number_length = string_number.length

  if number_length == 3 && second_digit == '0' && third_digit == '0'
    # +7 below is for "hundred"
    sum += number_hash[first_digit.to_i].length + 7
  elsif number_length == 3
    # +10 below is for "hundred" "and"
    sum += number_hash[first_digit.to_i].length + 10 + one_or_two_digit_number((second_digit+third_digit).to_i)
  end

end

def number_letter_counts(upto_number)
  sum = 0

  1.upto(upto_number) do |number|
    string_number = number.to_s
    number_length = string_number.length
    if number_length < 3
      sum += one_or_two_digit_number(number)
    elsif number_length == 3
      sum += three_digit_numbers(number)
    else
      sum += 11
    end
  end
  sum
end


puts number_letter_counts(1000)
