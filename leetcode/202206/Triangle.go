package leetcode

/**
 * @Description: 120. Triangle
 * @Info: https://leetcode.com/problems/triangle/
 */

func minimumTotal(triangle [][]int) int {
	ret := (1 << 31)
	for i := 1; i < len(triangle); i++ {
		for j := 0; j <= i; j++ {
			t := triangle[i][j]
			triangle[i][j] = t + triangle[i-1][j]
			if j < i && triangle[i][j] > t+triangle[i-1][j] {
				triangle[i][j] = t + triangle[i-1][j]
			}
			if i == len(triangle)-1 && ret > triangle[i][j] {
				ret = triangle[i][j]
			}
		}
	}
	return ret
}
