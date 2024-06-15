class Node
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinaryTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def add(value)
    if @root.nil?
      @root = Node.new(value)
    else
      add_recursive(@root, value)
    end
  end

  def in_order_traversal(node = @root, &block)
    return if node.nil?

    in_order_traversal(node.left, &block)
    yield node.value
    in_order_traversal(node.right, &block)
  end

  private

  def add_recursive(node, value)
    if value < node.value
      if node.left.nil?
        node.left = Node.new(value)
      else
        add_recursive(node.left, value)
      end
    else
      if node.right.nil?
        node.right = Node.new(value)
      else
        add_recursive(node.right, value)
      end
    end
  end
end

tree = BinaryTree.new
tree.add(10)
tree.add(5)
tree.add(15)
tree.add(3)
tree.add(7)
tree.add(12)
tree.add(18)

puts "In-order traversal:"
tree.in_order_traversal { |value| puts value }
