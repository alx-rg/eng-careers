# 605. Can Place Flowers
# You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

# Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.



# Example 1:

# Input: flowerbed = [1,0,0,0,1], n = 1
# Output: true
# Example 2:

# Input: flowerbed = [1,0,0,0,1], n = 2
# Output: false


# Constraints:

# 1 <= flowerbed.length <= 2 * 104
# flowerbed[i] is 0 or 1.
# There are no two adjacent flowers in flowerbed.
# 0 <= n <= flowerbed.length

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)

  # If n is 0, it means no more flowers need to be planted, so return true
  return true if n == 0

  # Initialize index i to traverse the flowerbed array
  i = 0
 puts "flowerbed.size #{flowerbed.size}"
 puts "flowerbed at [5] == 0? #{flowerbed[i + 1].to_i == 0}"

  # Loop through the flowerbed array
  while i < flowerbed.size
    # Print current index i, flowerbed value at index i, and value of n

    # If the current plot is empty
    if flowerbed[i] == 0
      # Check if the next plot is also empty and within bounds
    puts "value of i after first if #{i}"
      if flowerbed[i + 1].to_i == 0
      # When i is equal to 4 (the last valid index in the flowerbed array), the condition flowerbed[i + 1].to_i == 0 would indeed try to access an index outside the bounds of the array (flowerbed[5]). In most programming languages, this would typically result in an error or undefined behavior.

      # However, in Ruby, it's a bit different. Ruby's arrays are flexible, and accessing an index that doesn't exist returns nil. So flowerbed[5] will return nil, which then gets converted to 0 when using to_i method. This allows the condition flowerbed[i + 1].to_i == 0 to effectively check if the next plot is empty without throwing an error.

      # So, in this specific case, when i is 4, flowerbed[i + 1] evaluates to nil, which is then converted to 0 by to_i, satisfying the condition, allowing the code to proceed without errors.
    puts "value flowerbed[i + 1].to_i #{flowerbed[i + 1].to_i == 0} and value of i + 1 #{i + 1}"
    puts "value of i #{i}"
    puts "value of n #{n}"
        # If both current and next plots are empty, plant a flower, decrease the count of remaining flowers to plant, and skip the next plot
        n -= 1
        # we're adding 2 to the index, since we've now checked for 0 at the current and next
        i += 2
        # If no more flowers need to be planted, return true
        return true if n <= 0
      else
        # If the next plot is not empty or out of bounds, skip two plots
        i += 3
      end
    else
      # If the current plot is not empty, skip to the next empty plot
      i += 2
    end
  end

  # If we reach here, it means we traversed the entire flowerbed array and still have flowers left to plant
  # So, return true if no more flowers need to be planted, otherwise false
  puts "end value of n #{n}"

  n <= 0

    # zero_groups = []
    # countOfPots = 0
    # count = 0
    # if flowerbed.length == 1 && flowerbed[0] == 0 && n == 1
    #     countOfPots += 1
    #     return true
    # end
    # if flowerbed.length == 3 || flowerbed.length == 5
    #     if flowerbed.sum == 0
    #         if flowerbed.length == 3 && n <= 2
    #             return true
    #         elsif flowerbed.length == 5 && n <= 3
    #             return true
    #         else
    #             return false
    #         end
    #     end
    # end
    # flowerbed.each do |num|
    #     if flowerbed[0] == 0 && flowerbed[1] == 0
    #         countOfPots += 1
    #         flowerbed.shift(2)
    #     end
    #     if flowerbed[-1] == 0 && flowerbed[-2] == 0
    #         countOfPots += 1
    #         flowerbed.pop(2)
    #     end
    # end
    # flowerbed.each do |num|
    #     if num == 0
    #         count += 1
    #     else
    #         if count >= 3
    #             zero_groups << count
    #         end
    #         count = 0
    #     end
    # end
    # zero_groups.each do |num|
    #     numberpots = ((num - 1) / 2)
    #     countOfPots += numberpots
    # end
    # return (countOfPots >= n)
end

flowerbed = [0,0,0,0,0]
n = 3
can_place_flowers(flowerbed, n)
