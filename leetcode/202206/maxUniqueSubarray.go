package leetcode

/**
 * @Desciption: 1695. Maximum Erasure Value
 * @Info: https://leetcode.com/problems/maximum-erasure-value/
 */

func maximumUniqueSubarray(nums []int) int {
	t_sums, n, ret := 0, len(nums), 0
	get := make(map[int]int)
	for l, r := 0, 0; r < n; r++ {
		t_sums += nums[r]
		if get[nums[r]] == 0 {
			get[nums[r]]++
			if ret < t_sums {
				ret = t_sums
			}
		} else {
			for ; l < r; l++ {
				t_sums -= nums[l]
				if nums[l] == nums[r] {
					l++
					break
				}
				get[nums[l]]--
			}
		}
	}
	return ret
}
