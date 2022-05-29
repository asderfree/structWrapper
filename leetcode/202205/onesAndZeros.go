package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/6:11:19
 *@Version: v1.0.0
 *@File: adjencentDup
 *@Info: 474. Ones and Zeroes
 *@Desc: https://leetcode.com/problems/ones-and-zeroes/
**/

/**
 * @description: the function to resolve one's and zero's problem
 * @param strs: the strs
 * @param m: the number of amount 0
 * @param n: the number of amount 1
 * @return {*}: the length of the longest substr
 */
func findMaxForm(strs []string, m int, n int) int {
	// initilize the dp package with zero
	numMap := make([][]int, m+1)
	for i := range numMap {
		numMap[i] = make([]int, n+1)
	}
	// the dp[i][j] means, the i0 and j1's larget sub str
	// fmt.Println(numMap)
	for s := range strs {
		numZero, numOne := 0, 0
		for i := range strs[s] {
			if strs[s][i] == '0' {
				numZero++
			} else if strs[s][i] == '1' {
				numOne++
			}
		}
		for i := m; i >= numZero; i-- {
			for j := n; j >= numOne; j-- {
				numMap[i][j] = max(numMap[i][j], numMap[i-numZero][j-numOne]+1)
			}
		}
	}
	// fmt.Println(numMap)
	return numMap[m][n]
}
