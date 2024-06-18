class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    new_node = Node.new(value)

    if @head.nil?
      @head = new_node
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end

  def display
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next_node
    end
    puts "nil"
  end

  def remove(value)
    return if @head.nil?

    if @head.value == value
      @head = @head.next_node
      return
    end

    current = @head
    while current.next_node && current.next_node.value != value
      current = current.next_node
    end

    return if current.next_node.nil?

    current.next_node = current.next_node.next_node
  end

  def size
    count = 0
    current = @head
    while current
      count += 1
      current = current.next_node
    end
    count
  end
end

list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
list.prepend(0)
list.display
puts "Size: #{list.size}"

list.remove(2)
list.display
puts "Size: #{list.size}"
