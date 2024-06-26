# Linear Search Algorithm 

class LinearSearch
   def self.search(array, target)
        found = false
        index = nil

        array.each_with_index do |element, i|
            if element == target
                found = true
                index = i
                break
            end
        end

        if found
            puts "Target #{target} founded at index #{index}"
        else
            puts "Target #{target} not founded in array"
        end
    end
end

array = [10, 50, 70, 80, 30, 20, 90, 40]
target = 30

LinearSearch.search(array, target)
