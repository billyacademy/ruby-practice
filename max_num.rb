def max_num(array)
  max = array.first
  array.each do |num|
    if num > max
      max = num
    end
  end
  p max
end

max_num([])
