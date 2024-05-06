# Binary Search

class BinarySearch
    def self.search(array, target)
        left = 0
        right = array.length - 1
        while right >= left
            middle = (right + left) / 2

            if array[middle] == target
                puts "Target #{target} founded at index #{middle}"
                return middle
            elsif array[middle] < target
                left = middle + 1
            else
                right = middle - 1
            end
        end
        puts "Target #{target} not founded at array"
        return -1
    end
end

array = [1, 3, 5, 7, 9, 11, 13, 15, 17]

target = 5

BinarySearch.search(array, target)
