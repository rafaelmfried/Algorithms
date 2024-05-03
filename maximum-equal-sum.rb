# Find maximum equal sum of every three stacks

class Stack
    @attr_accessor :elements

    def initialize (elements)
        @elements = elements
    end

    def sum
        return @elements.sum
    end

    def pop
        return @elements.shift
    end
end

class MaximumEqualSum
