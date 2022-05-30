package leetcode

/**
 * 最长回文子串: 动态规划
 * @Desciption: 5. Longest Palindromic Substring
 * @Info: https://leetcode.com/problems/longest-palindromic-substring/
 */

func longestPalindrome(s string) string {
	n := len(s)
	if n == 0 {
		return ""
	}
	dp := make([][]int, n)
	m, mi, mj := 0, 0, 0
	for i, _ := range dp {
		dp[i] = make([]int, n)
		dp[i][i] = 1
	}
	for i := 0; i < n; i++ {
		for j := 0; j < i; j++ {
			if s[i] == s[j] && i >= j {
				if i == j+1 {
					dp[i][j] = 2
				} else if dp[i-1][j+1] != 0 {
					dp[i][j] = dp[i-1][j+1] + 2
				}
			}
			if dp[i][j] > m {
				m, mi, mj = dp[i][j], i, j
			}
		}
	}
	// fmt.Println(dp)
	return s[mj : mi+1]
}
