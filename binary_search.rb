
def binary_search(list, value_to_find)
  sorted_list = list.sort
  low = 0
  high = sorted_list.length
  middle = (low + high) / 2


  while low <= high
    middle = (low+high) / 2
    if sorted_list[middle] == value_to_find
      return sorted_list[middle]
    end

    if sorted_list[middle] > value_to_find
      high = middle - 1
    else
      low = middle + 1
    end
  end
  nil
end

puts binary_search([1, 2, 3, 4, 99, 5, 6, 9, 100, 1020, 2000], 99)
