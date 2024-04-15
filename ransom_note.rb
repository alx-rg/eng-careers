# 383. Ransom Note
# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

# Example 1:

# Input: ransomNote = "a", magazine = "b"
# Output: false
# Example 2:

# Input: ransomNote = "aa", magazine = "ab"
# Output: false
# Example 3:

# Input: ransomNote = "aa", magazine = "aab"
# Output: true


# Constraints:

# 1 <= ransomNote.length, magazine.length <= 105
# ransomNote and magazine consist of lowercase English letters.

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  # Initialize a hash table to store character counts in magazine
  counts = Hash.new(0)

  # Count characters in magazine and store in counts
  magazine.each_char { |char| counts[char] += 1 }

  # Iterate through ransomNote characters
  ransom_note.each_char do |char|
    # If character count is 0 or character doesn't exist in magazine, return false
    return false if counts[char] == 0
    # Decrement character count in magazine
    counts[char] -= 1
  end

  # If all characters in ransomNote are found in magazine, return true
  return true

  # My first thought was to create two hashes, one for ransom_note and one for magazine.
  # Then go use this to iterate through magazine.
  # The thing is, you just need magazine to be a hash and you iterate through ransom_note
  # So in the end, it's more efficient
end
