# 128. Longest Consecutive Sequence
# 
# Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

# You must write an algorithm that runs in O(n) time.
require 'set'

def longest_consecutive(array)
    num_set = Set.new(array) # Creating a set from the input array
    max_length = 0
  
    array.each do |num|
      next if num_set.include?(num - 1) # Skip if not the starting element
  
      current_length = 1
      while num_set.include?(num + 1)
        num += 1
        current_length += 1
      end
      max_length = [max_length, current_length].max
       end
       return max_length
    end

    puts longest_consecutive([100,4,200,1,3,2])
       
  