package leetcode

/**
 * @Description: 120. Triangle
 * @Info: https://leetcode.com/problems/triangle/
 */

func minimumTotal(triangle [][]int) int {
	if len(triangle) == 0 {
		return triangle[0][0]
	}
	ret := (1 << 31)
	for i := 1; i < len(triangle); i++ {
		for j := 0; j <= i; j++ {
			t := 0
			if j == 0 {
				t = triangle[i-1][j]
			} else if j == i {
				t = triangle[i-1][j-1]
			} else {
				if triangle[i-1][j] < triangle[i-1][j-1] {
					t = triangle[i-1][j]
				} else {
					t = triangle[i-1][j-1]
				}
			}
			triangle[i][j] += t
			if i == len(triangle)-1 && ret > triangle[i][j] {
				ret = triangle[i][j]
			}
		}
	}
	return ret
}
