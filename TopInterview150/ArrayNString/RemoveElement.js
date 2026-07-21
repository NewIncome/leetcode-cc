var removeElement = function(nums, val) {
    let i = 0
    while(i <= nums.length) {
        if(nums[i] == val) nums.splice(i,1);
        else i++;
    }
    return nums.length
};

/*
  Since we'll be removing elements in place,
  we'll use a while-loop,
  with i vs the array.length as the argument,
  we'll only advance i when we don't removeAnElm / shorten-the-array
 */
