def rightmost_occurrence(string, character)
  index = 0
  occurrence = nil
  string.each_char do |char|
    if char == character
      occurrence = index
      index += 1
    else
      index += 1
    end
  end
  occurrence
end

p rightmost_occurrence('big bad bikers', 'b')
