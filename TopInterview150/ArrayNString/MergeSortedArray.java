import java.util.Arrays;

public class MergeSortedArray {
    
    /* Pointers approach
      Time complexity: O(m+n): O(K)
      Space complexity:        O(1)
    */
    public static void mergeSortedArray(int[] nums1, int m, int[] nums2, int n) {
        int p1 = m -1, p2 = n - 1, i = m+n-1;

        while(p2 >= 0 && i >= 0) {
            System.out.println("i: " + i + ", p1: " + p1 + ", p2: " + p2 + ", nums1: " + Arrays.toString(nums1));
            if(p1 >= 0 && nums1[p1] > nums2[p2]) {  //the order of the conditions matter greatly in Java
                nums1[i--] = nums1[p1--];   // post-decrement operator, decrements after use
            } else {
                nums1[i--] = nums2[p2--];
            }
        }
        //for tests
        System.out.println(Arrays.toString(nums1));
    }

    // TEST SOLUTION
    public static void main(String[] args) {
        //int[] a1 = {1,2,3,0,0,0};
        //int[] a2 = {2,5,6};
        //mergeSortedArray(a1, 3, a2, 3);
        int[] a1 = {0};
        int[] a2 = {1};
        mergeSortedArray(a1, 0, a2, 1);
    }
}
