# Minimum Sum

class MinimumSum
    def self.minimum_sum(array)
        minimum_sum = array.min * (array.length - 1)
        puts "The minimum sum for the array #{array} is #{minimum_sum}"
        return minimum_sum
    end
end

array = [7, 2, 3, 4, 5, 6]

MinimumSum.minimum_sum(array)
