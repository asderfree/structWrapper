package leetcode

/**
 *@Description: 135. Candy
 *@Info: https://leetcode.com/problems/candy/
 * 两次遍历 第一次遍历顺序递增的 第二次遍历逆序递增的即可
 */

func candy(ratings []int) int {
	dp := make([]int, len(ratings))
	for i := 0; i < len(ratings); i++ {
		if i == 0 {
			dp[i] = 1
			continue
		}
		if ratings[i] > ratings[i-1] {
			dp[i] = dp[i-1] + 1
		} else {
			dp[i] = 1
		}
	}
	ans := dp[len(ratings) - 1]
	for i := len(ratings) - 2; i >= 0; i-- {
		if ratings[i] > ratings[i+1] && dp[i] <= dp[i+1] {
			dp[i] = dp[i+1] + 1
		}
		ans += dp[i]
	}
	return ans
}
