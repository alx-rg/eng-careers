# 1071. Greatest Common Divisor of Strings
# For two strings s and t, we say "t divides s" if and only if s = t + t + t + ... + t + t (i.e., t is concatenated with itself one or more times).

# Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.



# Example 1:

# Input: str1 = "ABCABC", str2 = "ABC"
# Output: "ABC"
# Example 2:

# Input: str1 = "ABABAB", str2 = "ABAB"
# Output: "AB"
# Example 3:

# Input: str1 = "LEET", str2 = "CODE"
# Output: ""


# Constraints:

# 1 <= str1.length, str2.length <= 1000
# str1 and str2 consist of English uppercase letters.

# @param {String} str1
# @param {String} str2
# @return {String}
# def gcd_of_strings(str1, str2)
#   s1length = str1.length
#   s2length = str2.length
#   string = str1.delete_prefix(str2)
#       if string.length == 0
#       puts "string.length == 0 #{string}"
#           return str1
#       elsif (string.length == str2.length) && string != str2
#       puts "string.length == str2.length #{string}"
#           return ""
#       elsif string.length != 0
#       puts "string.length != 0 #{string}"
#           return string
#       end
#   end

  # @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
  string = str1.length >= str2.length ? str1.delete_prefix(str2) : str2.delete_prefix(str1)
  shortString = str1.length >= str2.length ? str2.delete_prefix(string) : str1.delete_prefix(string)
  puts string
  puts shortString
      if string.length == 0
      puts "string.length == 0 #{string}"
          return str1
      elsif (string.length == str2.length) && string != str2
      puts "string.length == str2.length #{string}"
          return ""
      elsif string.length != 0
      puts "string.length != 0 #{string}"
          return string
      elsif (str1.length / str2.length) != 2 or (str2.length / str1.length) != 2
          puts "(str1.length / str2.length) shortString #{string}"
          return shortString
      end
  end
