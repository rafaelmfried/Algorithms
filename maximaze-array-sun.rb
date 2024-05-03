# Maximaze Array Sum after K Negations

class MaximumSum
    def self.maximum_sum(array, k)
        # The ! is to modify the array without need to use other variable.
        array.sort!

        index = 0

        while k > 0 && index < array.length && array[index] < 0
            array[index] = -array[index]
            k -= 1
            index += 1
        end

        if k % 2 != 0
            minimum_value_index = array.index(array.min) 
            array[minimum_value_index] = -array[minimum_value_index]
        end

        puts "The Maximum sum of the array #{array} After #{k} Negations is #{array.sum}"
        return array.sum
    end
end

array = [-2, 0, 5, -1, 2]
k = 4
MaximumSum.maximum_sum(array, k)
