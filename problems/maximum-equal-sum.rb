class Stack
    attr_accessor :elements
  
    def initialize(elements)
      @elements = elements
    end
  
    def sum
      @elements.sum
    end
  
    def pop
      @elements.shift if @elements.any?
    end
  
    def empty?
      @elements.empty?
    end
end
  
class MaximumEqualSum
    def self.maximum_equal_sum(stacks)
        sums = stacks.map(&:sum)

        while true
        max_sum = sums.max

        return max_sum if sums.all? { |sum| sum == max_sum }

        max_sum_index = sums.index(max_sum)
        stacks[max_sum_index].pop
        sums[max_sum_index] = stacks[max_sum_index].empty? ? 0 : stacks[max_sum_index].elements.sum
        end
    end
end
  
stack1 = Stack.new([3, 10])
stack2 = Stack.new([2, 11])
stack3 = Stack.new([4, 9])

stacks = [stack1, stack2, stack3]

puts MaximumEqualSum.maximum_equal_sum(stacks)
  