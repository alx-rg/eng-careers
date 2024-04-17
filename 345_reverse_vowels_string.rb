# 345. Reverse Vowels of a String
# Given a string s, reverse only all the vowels in the string and return it.

# The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower and upper cases, more than once.

# Example 1:

# Input: s = "hello"
# Output: "holle"
# Example 2:

# Input: s = "leetcode"
# Output: "leotcede"


# Constraints:

# 1 <= s.length <= 3 * 105
# s consist of printable ASCII characters.


# @param {String} s
# @return {String}
def reverse_vowels(s)


  vowels = "aeiouAEIOU"
  vowels_array = []
  string = ""

  s.each_char do |char|
      # for each character in the string, add only the vowels to the vowels array if they match and in the order they appears
    #   vowels_array << char if vowels.match(char) match did not work whild include? did.
      # puts "The vowels array #{vowels_array}"
      vowels_array << char if vowels.include?(char)
  end

  reversed_vowels = vowels_array.reverse
  index = 0

  # Replace each vowel in the string with the corresponding reversed vowel
  s.gsub(/[aeiouAEIOU]/) do
    replaced_vowel = reversed_vowels[index]
    index += 1
    replaced_vowel
  end

#   vowels = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]

#     first = 0
#     last = s.length - 1

#     while first < last
#         first_char = s[first]
#         last_char = s[last]

#         if vowels.include?(first_char) && vowels.include?(last_char)
#             temp = s[first]
#             s[first] = s[last]
#             s[last] = temp
#         elsif vowels.include?(first_char)
#             last -= 1
#             next
#         elsif vowels.include?(last_char)
#             first += 1
#             next
#         end

#         first += 1
#         last -= 1
#     end

#     return s

    # or this approach is better yet

    # def reverse_vowels(s)
    #   vowels = "aeiouAEIOU"
    #   left = 0
    #   right = s.length - 1

    #   while left < right
    #       while left < right && !vowels.include?(s[left])
    #           left += 1
    #       end

    #       while left < right && !vowels.include?(s[right])
    #           right -= 1
    #       end

    #       if left < right
    #           s[left], s[right] = s[right], s[left]
    #           left += 1
    #           right -= 1
    #       end
    #   end

    #   s
end

end
