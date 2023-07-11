# 1. Two Sum
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

def two_sum(nums, target)
    num_map = {}
 
   nums.each_with_index do |num, index|
     complement = target - num
     if num_map.key?(complement)
       return [num_map[complement], index]
     end
     num_map[num] = index
   end
 
   nil # No solution found, return nil or an empty array
 end
 
 nums = [2, 7, 11, 15]
 target = 9
 indices = two_sum(nums, target)
 puts indices.inspect # Output: [0, 1]