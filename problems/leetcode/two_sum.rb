# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num_index_map = {}
  
  nums.each_with_index do |num, index|
    
    complement = target - num

    if num_index_map.key?(complement)
      return [num_index_map[complement], index]
    end

    num_index_map[num] = index
  end    
end

p two_sum([2,7,11,15], 9)
p two_sum([3,2,4], 6)
p two_sum([3,3], 6)
