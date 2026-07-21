/**
 * Given an array nums of size n, return the majority element.
 * 
 * The majority element is the element that appears more than ⌊n / 2⌋ times.
 * You may assume that the majority element always exists in the array.
 * 
 * ○ Constraints:
 *   n == nums.length
 *   1 <= n <= 5 * 104
 *   -109 <= nums[i] <= 109
 *   The input is generated such that a majority element will exist in the array.
 * ○ Follow-up: Could you solve the problem in linear time and in O(1) space?
 */

var majorityElement = function(nums) {
    let count = {};
    let maxAppear = Math.floor(nums.length / 2);
    
    for (const elm of nums) {
        //count[elm] = Object.hasOwn(count,elm) ? count[elm]+1 : 1  //.hasOwn() is for PlanObjectHash, .has() for map. Can also use like:  if ('name' in user)
        count[elm] = (count[elm] || 0) + 1;
        if(count[elm] > maxAppear) return elm;        
    }
};

//===--- DEMO SOLUTION ---===
//[3,2,3]  //3
//[2,2,1,1,1,2,2]  //2
console.log(majorityElement([3,2,3]));


/*
  Pseudocode (5")
  Opt.1 -ForLoop
  ♦ we must look for the element that appears more than n/2.floor times
  ♦ Vars: hash[num,count] count var, to keep track of each elements appearance count
          int maxAppear n/2 var, for readability
  ♦ Loop through the array and save each value's count in the hash
    ♦ at the same time of the save, check if with the added value it reaches
      the count of > n/2
    ♦ if it does, return that key
 */