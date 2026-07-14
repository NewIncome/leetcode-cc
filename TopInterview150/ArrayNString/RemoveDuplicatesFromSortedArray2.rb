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

def remove_duplicates2(nums)
    
end

# Pseudocode
# hints: sorted, ascending, remove 2nd duplicate in-place, order kept ==
# # in ruby I CAN remove the elm from the arr
# OPT#1 Ruby-Way
# • vars: curr_elm to compare against, which will change when comparing != ,
#         and double to check for 2nd rep (flag), counter of removed elms
# • curr_elm init with arr[0], double init_at 0, counter init_at 0
# • with while loop through array, start at pos 1, pos 0 will be 1st comparison
#   • check if curr_elm == arr[i]
#     • if yes, check if double == 0  # means encountered equals
#     • yes, double = 1  # means it's first encounter
#     • else, remove elm & reset double to 0 & counter +=1  # means 2nd encounter
# • return counter
