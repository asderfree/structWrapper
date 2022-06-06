package leetcode

/**
 * @Desciption: 867. Transpose Matrix
 * @Info: https://leetcode.com/problems/transpose-matrix/
 */

func transpose(matrix [][]int) [][]int {
	row, col := len(matrix), len(matrix[0])
	res := make([][]int, col)
	for i := 0; i < col; i++ {
		res[i] = make([]int, row)
	}
	for i := 0; i < row; i++ {
		for j := 0; j < col; j++ {
			res[j][i] = matrix[i][j]
		}
	}
	return res
}
