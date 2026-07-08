# Description:
# Remove duplicates from sorted array in place
# Return number of "unique" elements, counted elements
# T.C.  nums=[1,1,2]  # 2
# # T.C.  nums=[0,0,1,1,1,2,2,3,3,4]  # 5

def remove_duplicates(nums)
  # return if nums.length == 1  # EdgeCase No.1
  i = 1

  while i <= (nums.length - 1)
    nums[i - 1] == nums[i] ? nums.delete_at(i) : i += 1
    # return if nums.length == 1  # EdgeCase No.2
  end

  nums.length
end

=begin
  Opt#1, O(log N) ...
  + We could loop through the array, starting from position i+1, to length-1
    since we'll be deleting elms we must use a while loop, i <= (arr.length-1)
  + check if elm arr[i-1] == arr[i] if so, remove element in pos i  [delete_at]
  + return arr.length
=end
