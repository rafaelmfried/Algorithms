# Minimum product subset of an array

class MinimumProduct
    def self.minimum_product(array)
        negative_count = array.count { |number| number < 0 }

        zero_count = array.count { |number| number == 0 } 

        # No negatives number
        if negative_count == 0 && zero_count > 0
            return 0
        elsif negative_count == 0
            return array.min
        end

        # Even negative numbers
        if negative_count > 0 && negative_count % 2 == 0
            array.reject! { |number| number == 0  }
            negative_array = array.select { |num| num < 0 }
            max_negative = negative_array.empty? ? nil : negative_array.max
            array.delete(max_negative)
            return array.reduce(:*)
        end

        # Odd negative numbers
        array.reject! { |number| number == 0 }
        return array.reduce(:*)
    end
end

odd_negative_array = [-1, -1, -2, 4, 3] #wrong
# Output : -24

even_negative_array = [-4, -1, -2, -3, 4, 3] #wrong
# Output: -288

zero_and_odd_negative_array = [-1, 0]
# Output : -1

zero_and_even_negative_array = [-2, 0, -4, 6, 8] #wrong
# Output: -192

zeros_array = [0, 0, 0]
# Output : 0

positive_array = [1, 2, 3, 4]
# Output: 1

test_array = [-1, -1, -2, 4, 3]
#Output: -24

puts "Odd negative number and no zeros: #{MinimumProduct.minimum_product(odd_negative_array)}\n"
puts "Even negative number and no zeros: #{MinimumProduct.minimum_product(even_negative_array)}\n"
puts "Zero and Odd negative numbers: #{MinimumProduct.minimum_product(zero_and_odd_negative_array)}\n"
puts "Zeros and Even negative numbers: #{MinimumProduct.minimum_product(zero_and_even_negative_array)}\n"
puts "Zeros only: #{MinimumProduct.minimum_product(zeros_array)}\n"
puts "Positive only: #{MinimumProduct.minimum_product(positive_array)}\n"
puts "Test array: #{MinimumProduct.minimum_product(test_array)}\n"
