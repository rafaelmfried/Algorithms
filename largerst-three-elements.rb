class LargestThreeElementsFinder
    def self.find_largest_three_elements(array)
        unique_array = array.uniq
        sorted_array = unique_array.sort.reverse
  
        return sorted_array[0..2]
    end
end
  
array = [10, 4, 3, 50, 23, 90]
#Output: 90, 50, 23

array2 = [6, 8, 1, 9, 2, 1, 10, 10]
#Output: 10, 10, 9

array3 = [12, 13, 1, 10, 34, 11, 34]
#Output: 34, 13, 12

largest_three = LargestThreeElementsFinder.find_largest_three_elements(array3)
puts "Largest three elements: #{largest_three}"
  