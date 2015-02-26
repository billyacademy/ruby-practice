def frequencies(string)
  array = string.split('')
  hash = {}
  array.each do |letter|
    if hash.keys.include?(letter.to_sym)
      hash[letter.to_sym] += 1
    else
      hash[letter.to_sym] = 1
    end
  end
  final_hash = hash.sort_by {|key, value| value}.reverse.to_h
  final_hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

frequencies('bananahammock')
