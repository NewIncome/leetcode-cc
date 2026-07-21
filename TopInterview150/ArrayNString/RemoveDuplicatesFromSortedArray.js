/**
 * Remove duplicates from sorted array in place
 * Return number of "unique" elements, counted elements
 */

// Remove TheDups to right-side
var removeDuplicates = function(nums) {
    let savePos = 1    // Pointer 2

    for (let i = 1; i < nums.length; i++) {
        console.log("i: " + i + ", savePos: " + savePos + `, nums[i-1]: [${nums[i-1]}], nums[i]: [${nums[i]}]`);
        if(nums[i-1] != nums[i])    // save the different/unique elements
            nums[savePos++] = nums[i]
    }

    console.log("nums: " + nums);
    
    return savePos;
};

// Remove TheDups in-place
var removeDuplicates = function(nums) {
    let i = 1;
    while(i <= nums.length) {
        if(nums[i] == nums[i-1]) nums.splice(i,1);
        else i++;
    }
    return nums.length;
};


// === ==---  Demo solution  ---== ===
//let nums = [1,1,2,2,3];
let nums = [1,1,2];
console.log( removeDuplicates(nums) );
// === ==--- - - - - - - - - ---== ===

/* ---Pseudocode---
  ☼ Basically, we will only save UNIQUE elements
  ☼ save -> MOVE to the left part of the array
  ☼ savePos -> index to save an element == count of saved elements
 */

/* ie.:
    0,0+1  [1] != [1] ? : do nothing [1,1,2]
    1,1+1  [1] != [2] ? : swap 1,2 : [1,1,2]
 */
/*
    Why took too long?

    If loop will start at index 1 and check against i-1,
    we -must- assume the 1st element is -unique-,
    therefor k/savePos must start at 1,
    meaning always at least 1 unique element,
    leaving index 0 as is
 */
