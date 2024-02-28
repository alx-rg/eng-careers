# Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.

# Example 1:

# Input: num = 38
# Output: 2
# Explanation: The process is
# 38 --> 3 + 8 --> 11
# 11 --> 1 + 1 --> 2
# Since 2 has only one digit, return it.
# Example 2:

# Input: num = 0
# Output: 0

# Constraints:

def add_digits(num)

# The question is asking us for the DIGITAL ROOT which is a single-digit value obtained by repeatedly summing the digits of the number until a single-digit number is reached.

# For example, let's find the digital root of the number 2822:

# Add digits of the number 2 + 8 + 2 + 2 = 14
# Since 14 is not a single digit number, repeat 1 + 4 = 5
# The digital root of 2822 is 5
# We could also have done 2822 %(mod) 9 which would be 5

  if num > 0
    # take the number and substract 1. Why you ask?
    # when num is not dividible by 9, subtracting 1 won't affect the calculation
    # since the remainder will still be in the range of 1 to 8
    # if num is divisible by 9, we'd get 0. So subtracting 1 ensures that the remainder becomes 8 + 1 = 9 (no zeros)
    1 + ((num - 1) % 9)
  else
    return 0
  end

  # if(num == 0)
  #   return 0;
  # elsif (num % 9 == 0)
  #   return 9;
  # else
  #   return num % 9;
  # end

  # new_digits = num
  # num_length = new_digits.to_s.length
  # while num_length > 1
  #   new_digits = new_digits.to_s.chars.each_slice(1).map {
  #     |new_array| new_array.join.to_i
  #   }.sum
  #   num_length = new_digits.to_s.length
  # end
  # return new_digits
end

puts 3 % 10
# puts add_digits(44333)
# puts add_digits(4)
# puts add_digits(0)
# puts add_digits(17)
