
# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:

# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]
# Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
# Example 2:

# Input: nums = [3,2,4], target = 6
# Output: [1,2]
# Example 3:

# Input: nums = [3,3], target = 6
# Output: [0,1]

# Define a method 'two_sum' that takes an array of numbers 'nums' and a target number 'target'
# def two_sum(nums, target)
#   # Iterate through each element of the 'nums' array along with its index
#   nums.each_with_index do |number, index|
#     # Calculate the index of the counterpart of the current number in the 'nums' array
#     # target - number: Subtract the current number (number) from the target sum (target). example, if number is 2 and target is 9, then target - number is 9 - 2, which equals 7.
#     # nums.index(...): Search the nums array for the result of target - number, which is 7 in this case. It returns the index of the first occurrence of 7 in the array.
#     # If the number 7 is found in the array, nums.index(target - number) will return its index. Otherwise, it will return nil if 7 is not present in the array.
#     target_index = nums.index(target - number)
#     # Skip the current iteration if the index of the counterpart is the same as the current index
#     next if target_index == index
#     # Check if the counterpart index exists (non-nil)
#     if target_index
#       # Return an array containing the current index and the counterpart index
#       return [index, target_index]
#     end
#   end
# end



def two_sum(nums, target)
  # Create an empty hash map to store numbers encountered so far and their indices
  num_indices = {}
  # Iterate through each number in the nums array along with its index
  nums.each_with_index do |num, index|
    # Calculate the counterpart, which is the value that, when added to 'num', equals 'target'
    counterpart = target - num
    # Check if the counterpart is already in the 'num_indices' hash map
    if num_indices.key?(counterpart) && num != counterpart
      # If the counterpart exists in the hash map, return the indices of 'num' and its counterpart
      return [num_indices[counterpart], index]
    end
    # If the counterpart is not found, add 'num' and its index to the 'num_indices' hash map
    num_indices[num] = index
    # after two iterations it would look like this:
    # {
    #   3 => 0,
    #   5 => 1
    # }
  end
  puts num_indices
  # If no solution is found after iterating through the entire array, return 'nil'
  return nil
end



puts two_sum([3,5,7,12,11,15,5,2], 9)
