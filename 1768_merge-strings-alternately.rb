# 1768. Merge Strings Alternately
# Hint
# You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.

# Return the merged string.

# Example 1:

# Input: word1 = "abc", word2 = "pqr"
# Output: "apbqcr"
# Explanation: The merged string will be merged as so:
# word1:  a   b   c
# word2:    p   q   r
# merged: a p b q c r
# Example 2:

# Input: word1 = "ab", word2 = "pqrs"
# Output: "apbqrs"
# Explanation: Notice that as word2 is longer, "rs" is appended to the end.
# word1:  a   b
# word2:    p   q   r   s
# merged: a p b q   r   s
# Example 3:

# Input: word1 = "abcd", word2 = "pq"
# Output: "apbqcd"
# Explanation: Notice that as word1 is longer, "cd" is appended to the end.
# word1:  a   b   c   d
# word2:    p   q
# merged: a p b q c   d


# Constraints:

# 1 <= word1.length, word2.length <= 100
# word1 and word2 consist of lowercase English letters.

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)

   # Initialize an empty string to store the merged result
   result = ""

   # Zip the characters of word1 and word2 into pairs
   pairs = word1.chars.zip(word2.chars)

   # Flatten the pairs into a single array of characters
   chars = pairs.flatten

   # Join the characters together to form the merged string
   result = chars.join

   # Check if the merged result is empty
   if result.empty?
     puts "result is empty"
   else
     puts "result is not empty"
   end

   # Append the remaining characters from the longer word to the merged result
   if word1.length > word2.length
     result += word1[result.length..-1].to_s
   elsif word2.length > word1.length
     result += word2[word1.length..-1].to_s
   end

   # Return the merged result
   return result

  # newWord = ""
  # word1a = word1.split("")
  # word2a = word2.split("")
  # if word1.length >= word2.length
  #     word1a.each_with_index do |letter, index|
  #             newWord << letter
  #             if word2a[index] != nil
  #                 newWord << word2a[index]
  #             end
  #         end
  #     return newWord
  # else
  #     word2a.each_with_index do |letter, index|
  #             if word1a[index] != nil
  #                 newWord << word1a[index]
  #             end
  #             newWord << letter
  #         end
  #     return newWord
  # end

  # word1length = word1.length
  # word2length = word2.length
  # word1array = word1.split("")
  # word2array = word2.split("")
  # newArray = ""
  # if word1length > word2length
  #     # iterate orver word1 only until reach word2 length, then take the rest of word1 length and add to new word
  #     puts "word1longer"
  #         word1array.each_with_index do |letter, index|
  #             newArray << letter
  #             if word2array[index] != nil
  #                 newArray << word2array[index]
  #             end
  #             puts "newArray after word1 array #{newArray}"
  #         end
  #     return newArray

  # elsif word2length > word1length
  #     puts "word2longer"
  #     word2array.each_with_index do |letter, index|
  #         if word1array[index] != nil
  #             newArray << word1array[index]
  #         end
  #         newArray << letter
  #     end
  #     return newArray
  # else
  #     puts "words are even"
  #     word1array.each_with_index do |letter, index|
  #         newArray << letter
  #         newArray << word2array[index]
  #     end
  #     return newArray
  # end

end
