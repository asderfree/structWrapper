package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/7:11:45
 *@Version: v1.0.0
 *@File: pattern
 *@Info: 456 132 pattern
 *@Desc: https://leetcode.com/problems/132-pattern/
**/

// find132pattern use a stack to record the right 32 pattern and record the min2 in the right, scan the left smaller than the 2
func find132pattern(nums []int) bool {
	min := int(^uint(0) >> 1)
	min = ^min
	var stack []int
	for i := len(nums) - 1; i >= 0; i-- {
		if nums[i] < min {
			return true
		}
		for len(stack) > 0 && stack[len(stack)-1] < nums[i] {
			min = stack[len(stack)-1]
			stack = stack[:len(stack)-1]
		}
		stack = append(stack, nums[i])
	}
	return false
}

func find132pattern_1(nums []int) bool {
	n := len(nums)
	min := nums[0]
	for i := 1; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			if min < nums[j] && nums[j] < nums[i] {
				return true
			}
			if min > nums[i] {
				min = nums[i]
				break
			}
		}
	}
	return false
}
