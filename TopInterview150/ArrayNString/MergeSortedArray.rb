# Description
# You are given two integer arrays nums1 and nums2, sorted in non-decreasing order,
# and two integers m and n, representing the number of elements in nums1 and nums2
# respectively.
# Merge nums1 and nums2 into a single array sorted in non-decreasing order.
# The final sorted array should not be returned by the function, but instead be
# stored inside the array nums1. To accommodate this, nums1 has a length of m + n,
# where the first m elements denote the elements that should be merged, and the
# last n elements are set to 0 and should be ignored. nums2 has a length of n.
#
# ○ TestCases
#   • nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3    # [1,2,2,3,5,6]
#   • nums1 = [1], m = 1, nums2 = [], n = 0   # [1]
#   • nums1 = [0], m = 0, nums2 = [1], n = 1   # [1]

# Pseudocode
# Opt#1:
#   - Basically we do some swapping, due to the spaces we already have in nums1
#   - We could loop over nums2-each-elm and start from back-to-front checking position m-1
#   - If position nums1[m-1] <= nums2[m-1]  SWAP  nums2[m-1] → nums1[m]
#   - end the func/meth

def merge(nums1, m, nums2, n)  # heavy approach (pointers)
  i = m - 1
  j = n - 1
  k = m+n-1

  while j >= 0 && k >= 0
    # check if to swap in a1 or put a2Val in a1
    if nums1[i] > nums2[j] && i >= 0
      nums1[k] = nums1[i]
      # #maybe not needed to swap the 0
      i -= 1
    else
      nums1[k] = nums2[j]
      j -= 1
    end
    #puts "k: #{k}, i: #{i}, j: #{j}, arr1: #{nums1}"
    k -= 1
  end

  nums1
end

# Best Solution
def merge_opt2(nums1, m, nums2, n)
  nums1.replace(nums1.first(m) + nums2.first(n)).sort!
end

# Test solution
p merge [1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3  #Ok
p merge [2, 0], 1, [1], 1  #Ok
p merge [0,0,0,0,0], 0, [1,2,3,4,5], 5  #Ok


# array.replace() ,   returns an array of all combinations of elements from all arrays
# array.sort! ,       Sorts the array in place, modifying the original array

# Explanation:
=begin
        TC1                   TC2
  a1:[4,5,6,0,0,0]     a1:[1,3,6,0,0,0]     a1:[4,5,6,0,0,0]     a1:[2,0]
  a2:[1,2,3]           a2:[1,2,5]           a2:[1,2,3]           a2:[1]

  [4,5,0,0,0,6] i-1    [1,3,0,0,0,6] i-1    [4,5,0,0,0,6] i-1    [2,0] i-1
  [4,0,0,0,5,6] i-2    [1,3,0,0,5,6] j-1    [4,0,0,0,5,6] i-2    [2,0] j-1
  [0,0,0,4,5,6] i-3    [1,0,0,3,5,6] i-2
  [0,0,3,4,5,6] j-1    [1,0,2,3,5,6] j-2
  [0,2,3,4,5,6] j-2    [1,2,3,4,5,6] j-3
  [1,2,3,4,5,6] j-3
  selfCase: i=j w-&     selfCase:

  OPT#1 - w/POINTERS
  Step.0  vars. i = a1.length-1; j = a2.length-1
  Step.1  loop while j >= 0
  Step.2  check which one to put in position a1[l1-1]
          ie.:  check i:2,j:2 -> if a1[i] > a1[i]
  Step.3  put greatest one in position a1[n-1]

  OPT#2
  Add into new array a1[0-l2] + a2[]
  Then sort; then pass value to a1
=end