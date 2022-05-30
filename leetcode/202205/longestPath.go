package leetcode

import "fmt"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/9:15:17
 *@Version: v1.0.0
 *@File: letterCombination
 *@Info: 329. Longest Increasing Path in a Matrix
 *@Desc: https://leetcode.com/problems/longest-increasing-path-in-a-matrix/
**/
// TODO: Unfinished work
/***/
func longestIncreasingPath(matrix [][]int) int {
	row, col := len(matrix), len(matrix[0])
	// 初始化一个与matrix等大的数组，记录每一格的最大长度
	dp := make([][]int, row)
	for r := range dp {
		dp[r] = make([]int, 0, col)
	}
	dir := [][]int{{1, 0}, {0, 1}, {-1, 0}, {0, -1}}
	biggestLen := func(x, y, z int) {
		if x < 0 || x >= row || y < 0 || y >= col {
			return
		}
	}
	fmt.Println(dir)
	biggestLen(0, 0, 1)
	return 0
}
