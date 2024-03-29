# 234. Palindrome Linked List

# Given the head of a singly linked list, return true if it is a
# palindrome
#  or false otherwise.

# Example 1:


# Input: head = [1,2,2,1]
# Output: true
# Example 2:


# Input: head = [1,2]
# Output: false


# Constraints:

# The number of nodes in the list is in the range [1, 105].
# 0 <= Node.val <= 9


# Follow up: Could you do it in O(n) time and O(1) space?
#

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  current = head
  arrayValues = []
  while current != nil
      arrayValues << current.val
      current = current.next
  end
  halfarray = (arrayValues.length / 2)
  (0..halfarray).each do |index|
      if arrayValues[index] != arrayValues[(-index)-1]
          return false
      end
  end

  return true
end

head = [1,2,2,1]
