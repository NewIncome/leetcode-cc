# Description:
# Given an integer array nums sorted in non-decreasing order, remove some
# duplicates in-place such that each unique element appears at most twice.
# The relative order of the elements should be kept the same.
# .
# Since it is impossible to change the length of the array in some languages,
# you must instead have the result be placed in the first part of the array
# nums. More formally, if there are k elements after removing the duplicates,
# then the first k elements of nums should hold the final result. It does not
# matter what you leave beyond the first k elements.
# .
# Return k after placing the final result in the first k slots of nums.
# .
# Constraints:
#  ♦ 1 <= nums.length <= 3 * 104
#  ♦ -104 <= nums[i] <= 104
#  ♦ nums is sorted in non-decreasing order.

# ----- Opt.1 - Removing elements in-place -----
def remove_duplicates2_in_place(nums)
  i = 2
  while i <= nums
    nums[i] == nums[i-2] ? nums.delete_at(i) : i += 1
  end
  nums.length
end

# ----- Opt.2 - Saving "unique" elements to left -----
def remove_duplicates2(nums)
  k = 2

  2.upto(nums.length-1) do |i|
    if nums[i] != nums[k - 2]
      nums[k] = nums[i] # save == move-left
      k += 1
    end
  end

  k
end

# Pseudocode
# Opt.1 -removing in place-
#   loop through array with while-loop
#   with i, starting at 2, to not-check first 2 elms(1st elm + 1st dup)
#     remove an element if nums(i) == nums(i-2)
#     else increment i
#   return the length of nums
# Opt.2 -moving "uniques" to left-
#   have a k-pointer var to keep track of the spacing of elements to move leftTo == save
#   loop through each-elm-in-array
#   with i, starting at 2 as-well-as k, to not-check first 2 elms(1st elm + 1st dup)
#     nums[i] != nums[k-2] : swap an element to the left-side(with k) if it qualifies as different || "unique"
#     and increment k
#   return k
