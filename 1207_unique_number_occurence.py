# 1207. Unique Number of Occurrences
# Given an array of integers arr, return true if the number of occurrences of each value in the array is unique or false otherwise.



# Example 1:

# Input: arr = [1,2,2,1,1,3]
# Output: true
# Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.
# Example 2:

# Input: arr = [1,2]
# Output: false
# Example 3:

# Input: arr = [-3,0,1,-3,1,1,1,-3,10,0]
# Output: true


# Constraints:

# 1 <= arr.length <= 1000
# -1000 <= arr[i] <= 1000

class Solution(object):
    def uniqueOccurrences(self, arr):
        """
        :type arr: List[int]
        :rtype: bool
        """
        # Initialize an empty dictionary to store the count of occurrences for each number
        count = {}

        # Iterate through the input array
        for number in arr:
            # If the number is already in the dictionary, increment its count
            if number in count:
                count[number] += 1
            # If the number is not in the dictionary, add it with a count of 1
            else:
                count[number] = 1

        # Check if the number of unique counts is equal to the total number of counts
        # If they are equal, it means each number has a unique count of occurrences
        return len(set(count.values())) == len(count.values())

    arr = [1,2,2,1,1,3]
