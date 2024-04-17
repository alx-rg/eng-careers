# 70. Climbing Stairs

# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?



# Example 1:

# Input: n = 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: n = 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step


# Constraints:

# 1 <= n <= 45

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n <= 2

  # Initialize an array to store the number of ways to reach each step
  dp = Array.new(n + 1)

  # Base cases: there's only one way to reach the first and second steps
  dp[1] = 1
  dp[2] = 2

  # Iterate from step 3 to n
  (3..n).each do |step|
    # Number of ways to reach the current step is the sum of ways to reach the previous two steps
    dp[step] = dp[step - 1] + dp[step - 2]
  end

  # Return the number of ways to reach the top
  return dp[n]
end
