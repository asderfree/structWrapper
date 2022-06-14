package leetcode

/**
 * @Description: 583. Delete Operation for Two Strings
 * @Info: https://leetcode.com/problems/delete-operation-for-two-strings/
 */

func doMinDistance(str1, str2 string, i, j int) int {
	min := func(a, b int) int {
		if a > b {
			return b
		}
		return a
	}
	if i == len(str1) && j == len(str2) {
		return 0
	}
	if i == len(str1) {
		return len(str2) - j
	}
	if j == len(str2) {
		return len(str1) - i
	}
	if str1[i] == str2[j] {
		return doMinDistance(str1, str2, i+1, j+1)
	}
	return 1 + min(doMinDistance(str1, str2, i, j+1), doMinDistance(str1, str2, i+1, j))
}
func minDistance(word1 string, word2 string) int {
	max := func (a, b int) int {
		if a > b {
			return a
		}
		return b
	}
	m, n := len(word1), len(word2)
	memo := make([][]int, m+1)
	for i:=0; i<m+1; i++ {
		memo[i] = make([]int, n+1)
		for j:=0; j<n+1; j++ {
			memo[i][j] = -1
		}
	}
	var lcs func(m, n int) int
	lcs = func(m, n int) int {
		if m == 0 || n == 0 {
			return 0
		}
		if memo[m][n] != -1 {
			return memo[m][n]
		}
		if word1[m-1] == word2[n-1] {
			memo[m][n] = 1 + lcs(m-1, n-1)
		} else {
			memo[m][n] = max(lcs(m-1, n), lcs(m, n-1))  
		}
		return memo[m][n]
	}

	return m + n - 2*lcs(m, n)
}
