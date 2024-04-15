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
   # Initialize a variable to traverse the linked list starting from the head
   current = head

   # Initialize an empty array to store the values of each node in the linked list
   arrayValues = []

   # Traverse the linked list and store the values of each node in the array
   while current != nil
     arrayValues << current.val
     current = current.next
   end

   # Calculate the halfway point of the array
   halfarray = (arrayValues.length / 2)

   # Iterate through the first half of the array
   (0..halfarray).each do |index|
     # Check if the value at the current index is not equal to its corresponding value
     # from the second half of the array
     if arrayValues[index] != arrayValues[(-index)-1]
       # If they are not equal, return false since it's not a palindrome
       return false
     end
   end

   # If the loop completes without finding any inequality, return true since it's a palindrome
   return true
end

head = [1,2,2,1]
