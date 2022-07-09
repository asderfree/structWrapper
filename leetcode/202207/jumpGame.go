package leetcode

import "sort"

/**
 *@Description: 1696. Jump Game VI
 *@Info: https://leetcode.com/problems/jump-game-vi/
 */

func maxResult(nums []int, k int) int {
	numsSize := len(nums)
	dq := []int{0}
	for i := 1; i < numsSize; i++ {
		nums[i] += nums[dq[0]]
		for len(dq) > 0 && nums[i] >= nums[dq[len(dq)-1]] {
			dq = dq[:len(dq)-1]
		}

		dq = append(dq, i)
		if i-dq[0] >= k {
			dq = dq[1:]
		}
	}

	return nums[numsSize-1]
}
