class ReversalRightRotation
    def self.right_rotate(array, k)
      # This is to garantee that the k is some number in the range (0...array.length)
      k = k % array.length
  
      reverse(array, 0, array.length - 1)
      reverse(array, 0, k - 1)
      reverse(array, k, array.length - 1)
      return array
    end
  
    def self.reverse(array, start, finish)
      while start < finish
        array[start], array[finish] = array[finish], array[start]
        start += 1
        finish -= 1
      end
    end
end
  
#Input: 
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3
#Output: 8 9 10 1 2 3 4 5 6 7

#Input: 
array2 = [121, 232, 33, 43 ,5]
k2 = 2
#Output: 43 5 121 232 33
  
puts "The array #{array} with k = #{k} rotations is: #{ReversalRightRotation.right_rotate(array,k)}"
puts "The array #{array2} with k = #{k2} rotations is: #{ReversalRightRotation.right_rotate(array2,k2)}"
