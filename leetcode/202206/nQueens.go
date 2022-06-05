package leetcode

/**
 * @Desciption: 52. N-Queens II
 * @Info: https://leetcode.com/problems/n-queens-ii/
 */

func judgeCanBePlace(x, y int, puzzleMap [][2]int) bool {
	for _, v := range puzzleMap {
		if x == v[0] || y == v[1] || (x+y) == (v[0]+v[1]) || (x-y) == (v[0]-v[1]) {
			return false
		}
	}
	return true
}

// 八皇后问题 使用回溯法
func totalNQueens(n int) int {
	var temp [][2]int
	return solve(temp, 0, n)

}

func solve(placed [][2]int, row, n int) int {
	count := 0
	if row == n {
		// fmt.Println(placed)
		return 1
	}
	for i := 0; i < n; i++ {
		if judgeCanBePlace(row, i, placed) {
			placed = append(placed, [2]int{row, i})
			count = count + solve(placed, row+1, n)
			placed = placed[:len(placed)-1]
		}
	}
	return count
}
