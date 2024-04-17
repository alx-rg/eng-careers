# 191. Number of 1 Bits
# Write a function that takes the binary representation of a positive integer and returns the number of
# set bits
#  it has (also known as the Hamming weight).



# Example 1:

# Input: n = 11

# Output: 3

# Explanation:

# The input binary string 1011 has a total of three set bits.

# Example 2:

# Input: n = 128

# Output: 1

# Explanation:

# The input binary string 10000000 has a total of one set bit.

# Example 3:

# Input: n = 2147483645

# Output: 30

# Explanation:

# The input binary string 1111111111111111111111111111101 has a total of thirty set bits.




# @param {Integer} n
# @return {Integer}
def hamming_weight(n)
  # Initialize a variable to count the number of set bits
  count = 0

  # Loop until n becomes 0
  while n != 0
      # Check if the least significant bit of n is 1
      if (n & 1) == 1
          # If the least significant bit is 1, increment the count
          count += 1
      end
      # Shift n to the right by 1 bit to discard the least significant bit
      n = n >> 1
  end

  # Return the count of set bits
  count

  # Convert n to its binary representation, count the number of '1's, and return the count
  # n.to_s(2).count('1')
end
