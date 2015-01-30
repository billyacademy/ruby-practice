# Write a function that sorts the keys in a hash by the length of the key as a string. For instance, the hash:
#
# { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
# should result in:
#
# ["abc", "4567", "another_key"]

def sort_hash(hash)
  array = []
  hash.keys.each do |key|
    array << key.to_s
  end
  array.sort_by {|x| x.length}
end

print sort_hash({ abc: 'hello', 'another_key' => 123, 4567 => 'third' })
