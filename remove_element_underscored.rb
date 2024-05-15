# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  return 0 if nums.empty?

  k = 0

  nums.each_with_index do |num, index|
    if num != val
      nums[k] = num
      k += 1
    end
  end
  
  (k...nums.length).each { |i| nums[i] = '_' }

  return k
end


p remove_element([3,2,2,3], 3)
p remove_element([0,1,2,2,3,0,4,2], 2)
