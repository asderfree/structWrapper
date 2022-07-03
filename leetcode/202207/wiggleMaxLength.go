package leetcode

/**
 *@Description:376. Wiggle Subsequence
 *@Info:https://leetcode.com/problems/wiggle-subsequence/
*/

func wiggleMaxLength(nums []int) int {
	n := len(nums)
	if n == 0{
		return 0
	}
	inc, dec := 1, 1
	for i := 1; i < n; i++ {
		if nums[i - 1] < nums[i] {
			inc = dec + 1
		}
		if nums[i] < nums[i - 1] {
			dec = inc + 1
		}
	}
	if inc > dec {
		return inc
	}
    return dec
}