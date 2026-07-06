/**
 * Given an integer array nums and an integer val, remove all occurrences of val
 * in nums in-place. The order of the elements may be changed. Then return the
 * number of elements in nums which are not equal to val.
 * 
 * arr:nums int:val, nums[-val,-val]
 * We need to:
 *   > remove all elements being same as val
 *   > count and return the #elements different than val
 *       or, return the length of the array without val ocurrences
 * Constraints:
 *   0 <= nums.length <= 100
 *   0 <= nums[i] <= 50
 *   0 <= val <= 100
 * TestCases
 *   nums = [3,2,2,3], val = 3   //2, nums = [2,2,_,_]
 *   nums = [0,1,2,2,3,0,4,2], val = 2   //5, nums = [0,1,4,0,3,_,_,_]
*/

import java.util.ArrayList;
import java.util.Arrays;
//import java.util.Collections;
import java.util.List;

public class RemoveElement {

    public static int removeElementOpt1(int[] nums, int val) {  //simple iterative approach unusable
        // Opt#1
        int count = 0;
        for(int e : nums) {
            if(e == val) {
                e = -1;
                ++count;
            }
        }
        Arrays.sort(nums);
        return nums.length + count;
    }

    public static int removeElementOpt2(int[] nums, int val) {
        //List<Integer> numsL = Arrays.asList(nums);
        List<Integer> numsL = new ArrayList<>();
        while (numsL.contains(val)) {
            numsL.remove(val);
        }
        nums = numsL.stream()
                .mapToInt(Integer::intValue)
                .toArray();
        return numsL.size();
    }

    // Correct ia solution
    /* Pointers approach
      Time complexity:         O(n)
      Space complexity:        O(1)
    */
    public static int removeElement(int[] nums, int val) {
        int k = 0;

        for (int i = 0; i < nums.length; i++) {
            if (nums[i] != val) {
                System.out.println("i: " + i + ", nums: " + Arrays.toString(nums) + ", k: " + k);
                nums[k++] = nums[i];
            }
        }

        return k;
    }

    //===--- DEMO SOLUTION ---===
    public static void main(String[] args) {
        int[] nums = {3,2,2,3};
        System.out.print(removeElement(nums, 3));
        System.out.println(", array: " + Arrays.toString(nums));
        //5, nums = [0,1,4,0,3,_,_,_]
    }

}

/*
  ->Pseudocode
  Opt#1.1:
    - iterate over the array, removing any elm == val
      - remove could mean to swap with a -1
      - keeping count of the swaped vals
    - return the length of the array - count
    - TimeComplexity O(N)
  Opt#1.2:
    - iterate over the array, removing any elm == val
      - remove could mean to swap with a -1
      - keeping count of the swaped vals
    - loop 'count' times over the array 
    - TimeComplexity O(N)
  Opt#2:
    we could also create a newArray,
    - iterate over the array and add the elments that aren't == val
    - reassign newArray to array, and return array.length
    //this wouldn't be in-place
  Opt#3:
    With:  ArrayUtils.removeElement(array, element);

  -> Working Option:
  ○ We will use 2 pointers, one to loop through the array checking each elm against val
  ○ the other one to allocate/move the elems diff than val to the beginning
  ○ same second pointer can be used to save count
    count of elements different than val, or the length of the array without val occurrences
 */