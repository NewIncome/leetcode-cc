#  Constraints:
#    0 <= nums.length <= 100
#    0 <= nums[i] <= 50
#    0 <= val <= 100
#  TestCases
#    nums = [3,2,2,3], val = 3   //2, nums = [2,2,_,_]
#    nums = [0,1,2,2,3,0,4,2], val = 2   //5, nums = [0,1,4,0,3,_,_,_]

def remove_element(nums, val)
  nums.delete val   # or: nums.reject! { |elm| elm == val }
  nums.length
end

def remove_element2(nums, val)
  nums.length.times do |i|
    puts "i: #{i}, nums: #{nums}"
    if nums[i] == val
      nums[0], nums[i] = nums[i], nums[0]   # to shift values
      nums.shift
    end
  end
  nums.length
end

# === ==--- Demo solution ---== ===
nums = [3,2,2,3]
val = 3
p remove_element2(nums, val)
p nums
# === ==--- - - - - - - - ---== ===

# Pseudocode
=begin
Opt#1: remove elm == val
Opt#2: swap elms != val to the beginning of the arr

  ○ loop through each element in the array
  Opt#1
  ○ check each if == val
  //since the order doesn't matter
  ○ if == to val, move to index 0 and pop
  || delete(), reject()
=end