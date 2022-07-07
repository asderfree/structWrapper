package leetcode

/**
 *@Description:97. Interleaving String
 *@Info:https://leetcode.com/problems/interleaving-string/
 */

func isInterleave(s1 string, s2 string, s3 string) bool {
	if s1 == "" || s2 == "" {
		return s3 == s1+s2
	}
	if len(s1)+len(s2) != len(s3) {
		return false
	}
	dp := make([]bool, len(s2)+1)
	for i := 0; i <= len(s1); i++ {
		nextDP := make([]bool, len(s2)+1)
		for j := 0; j <= len(s2); j++ {
			if i == 0 || j == 0 {
				nextDP[j] = s1[:i]+s2[:j] == s3[:i+j]
				continue
			}
			// check top
			if dp[j] && s1[i-1] == s3[i+j-1] {
				nextDP[j] = true
			}
			// check left
			if nextDP[j-1] && s2[j-1] == s3[i+j-1] {
				nextDP[j] = true
			}
		}
		dp = nextDP
	}
	return dp[len(s2)]
}
