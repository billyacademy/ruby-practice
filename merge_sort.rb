def merge_sort(array1, array2)
  array1.sort!
  array2.sort!
  merged_array = []
  n = 0

  array1.each do |element|
    if array2[n].nil?
      merged_array << element
    elsif element <= array2[n]
      merged_array << element
    else
      while array2[n] < element
        merged_array << array2[n]
        n += 1
        break if array2[n].nil?
      end
      merged_array << element
    end
  end

  while !array2[n].nil?
    merged_array << array2[n]
    n += 1
  end
  merged_array
end

p merge_sort([1, 2, 9, 13, 19, 2001, 2010, 200000], [5, 8, 10, 101, 201, 999, 2000])

p merge_sort([1, 2, 9, 10.144], [-2, 5, 8, 10, 10, 101, 201, 999, 2000])
