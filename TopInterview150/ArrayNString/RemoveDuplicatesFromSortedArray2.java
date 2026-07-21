import java.util.Arrays;

public class RemoveDuplicatesFromSortedArray2 {

    //----- Solution saving "unique" elements to the left -----
    public static int removeDuplicates(int[] nums) {
        int k = 2;

        for(int i = 2; i < nums.length; i++)
            if(nums[i] != nums[k-2])
                nums[k++] = nums[i];

        return k;
    }

    //===--- DEMO SOLUTION ---===
    public static void main(String[] args) {
        //int[] nums = {1,1,1,2,2,3};  // 5
        int[] nums = {0,0,1,1,1,1,2,3,3};  // 7
        System.out.println(removeDuplicates(nums) + " : " + Arrays.toString(nums));
    }

}
