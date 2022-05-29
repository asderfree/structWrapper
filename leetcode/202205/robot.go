package leetcode

import "fmt"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/9:15:17
 *@Version: v1.0.0
 *@File: letterCombination
 *@Info: Unique Paths II
 *@Desc: https://leetcode.com/problems/unique-paths-ii/
**/

func uniquePathsWithObstacles(obstacleGrid [][]int) int {
	// get the size of the given martix
	row, col := len(obstacleGrid), len(obstacleGrid[0])
	if row == 0 && col == 0 {
		return 0
	}
	// declare and initialize the dp
	dp := make([][]int, row)
	for i := range dp {
		dp[i] = make([]int, col)
	}
	dp[0][0] = 1
	fmt.Println(dp)
	// as the robot can only run in right or down, so the dp[i][j] = dp[i-1][j] + dp[i][j-1]
	for i := 0; i < row; i++ {
		for j := 0; j < col; j++ {
			if obstacleGrid[i][j] == 1 {
				dp[i][j] = 0
				continue
			}
			if i-1 >= 0 {
				dp[i][j] += dp[i-1][j]
			}
			if j-1 >= 0 {
				dp[i][j] += dp[i][j-1]
			}
		}
	}
	return dp[row-1][col-1]
}
