require 'pry'
class Node
  attr_accessor :value
  attr_accessor :next_node
  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end


class List
  attr_accessor :head
  def initialize(head = nil)
    @head = head
  end

  def add(value)
    @head = Node.new(value, @head)
  end

  def [](i)
    count = 0
    location = @head

    return location if i == 0

    until count == i
      count += 1
      location = location.next_node
    end
    location
  end

  def last
    node = @head
    until node.next_node == nil
      node = node.next_node
    end
    node
  end

  def each
    node = @head

    while !node.nil?
      yield(node.value)
      node = node.next_node
    end
  end
end


list = List.new
list.add(1)
list.add(3)
list.add(8)
list.add(9)
list.add(10)

puts list[2].value
puts list.last.value
binding.pry
list.each do |value|
  puts value
end
