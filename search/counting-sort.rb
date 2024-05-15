# Counting Sort Algorithm implementation

class CountingSort
    def self.sort(array)
        new(array).sort
    end

    def sort(array)
        # Create the count array with the max range of numbers that can exist in the array
        count_array = Array.new(array.max - array.min + 1, 0)
        array.each do |number|
            count_array[number - array.min] += 1
        end
        sorted_array = []
        count_array.each_with_index do |count, index|
            count.times {sorted_array << index + array.min}
        end
        puts "The sorted array is #{sorted_array}"
        return sorted_array
    end
end

array = [9, 5, 3, 7, 2, 10, 1, 8, 6, 4]
short_array = [5, 4, 3, 2, 1]

sorter = CountingSort.new()
sorter.sort(array)
