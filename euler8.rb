require 'pry'
def four_adjacent_digits(number)
  digit_one = 0
  digit_two = 1
  digit_three = 2
  digit_four = 3
  digit_five = 4
  digit_six = 5
  digit_seven = 6
  digit_eight = 7
  digit_nine = 8
  digit_ten = 9
  digit_eleven = 10
  digit_twelve = 11
  digit_thirteen = 12


  last_digit = number.to_s.length - 1
  max_product = 0
  string_number = number.to_s

  until digit_thirteen == last_digit
    product_of_thirteen_adjacent_numbers = string_number[digit_one].to_i*string_number[digit_two].to_i*string_number[digit_three].to_i*string_number[digit_four].to_i*string_number[digit_five].to_i*string_number[digit_six].to_i*string_number[digit_seven].to_i*string_number[digit_eight].to_i*string_number[digit_nine].to_i*string_number[digit_ten].to_i*string_number[digit_eleven].to_i*string_number[digit_twelve].to_i*string_number[digit_thirteen].to_i
    if product_of_thirteen_adjacent_numbers > max_product
      max_product =   product_of_thirteen_adjacent_numbers
    end
    digit_one += 1
    digit_two += 1
    digit_three += 1
    digit_four += 1
    digit_five += 1
    digit_six += 1
    digit_seven += 1
    digit_eight += 1
    digit_nine += 1
    digit_ten += 1
    digit_eleven += 1
    digit_twelve += 1
    digit_thirteen += 1
  end

  puts max_product
end

puts four_adjacent_digits(7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450)
