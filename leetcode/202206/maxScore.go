package leetcode

/**
 * @Description:1423. Maximum Points You Can Obtain from Cards
 * @Info:https://leetcode.com/problems/maximum-points-you-can-obtain-from-cards/
 * 解法: 滑动窗口
 *
 */

func maxScore(cardPoints []int, k int) int {
	max := func(a, b int) int {
		if a > b {
			return a
		}
		return b
	}
	n, res := len(cardPoints)-1, 0 // record the rightest of the cardPoints
	for i := 0; i < k; i++ {
		res += cardPoints[i]
	}
	if n == k-1 {
		return res
	}
	temp := res
	for i := k - 1; i >= 0; i-- {
		temp = temp - cardPoints[i] + cardPoints[n-k+i+1]
		res = max(temp, res)
	}
	return res
}

/**
 * 类似题目 也可以使用dp
 * https://leetcode.com/problems/maximum-score-from-performing-multiplication-operations/
 */

func maxSolveMaximumScore(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func solveMaximumScore(nums []int, multipliers []int, l, r, n int) int {
	k := l + len(nums) - 1 - r
	if n == 1 {
		return maxSolveMaximumScore(nums[l]*multipliers[k], nums[r]*multipliers[k])
	}
	maxL := nums[l]*multipliers[k] + solveMaximumScore(nums, multipliers, l+1, r, n-1)
	maxR := nums[r]*multipliers[k] + solveMaximumScore(nums, multipliers, l, r-1, n-1)
	return maxSolveMaximumScore(maxL, maxR)
}

func maximumScore(nums []int, multipliers []int) int {
	return solveMaximumScore(nums, multipliers, 0, len(nums) - 1, len(multipliers))
}
