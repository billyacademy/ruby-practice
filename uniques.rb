def uniques(string)
  array = string.split(',')
  arrayb = []
  array.each do |num|
    if !arrayb.include?(num)
      arrayb << num
    end
  end
  p arrayb.join(',')
end


uniques('1,1,1,2,2,3,3,3,4,4')
