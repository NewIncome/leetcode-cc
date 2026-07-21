/**
 * Remove 2nd+ duplicates from sorted array in place (only-allow 1 dup)
 * Return number of "unique" elements, counted elements
 */

// ----- Opt#1 - Removing elements in-place -----
var removeElements = function(nums) {
    // Possible EdgeCase
    //if(nums.length < 3) return nums.length

    let i = 2   // We start at 2 to allow the first 2 elements to be saved (1 + 1dup)
    while(i <= nums.length) {
        if(nums[i] == nums[i-2]) nums.splice(i,1);
        else i++;
    }
    return nums.length;
};

// ----- Opt#2 - Saving 'unique' elements to left -----