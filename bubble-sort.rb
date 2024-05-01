# Bubble Sort class implementation

class BubbleSort
    def sort(array)
        # The variable window is used to compare the index and the next index
        (0...array.length - 1).each do |window|
            swapped = false
            (0...array.length - window - 1).each do |index|
                if array[index] > array[index + 1]
                    array[index], array[index + 1] = array[index + 1], array[index]
                    swapped = true
                end
            end
            break unless swapped
        end
        puts "The sorted array is #{array}"
        return array
    end
end

sorter = BubbleSort.new()

array = [8, 12, 5, 17, 3, 20, 9, 14, 6, 1, 19, 4, 11, 2, 16, 10, 7, 18, 15, 13]
short_array = [5, 4, 3, 2, 1]

sorter.sort(array)
