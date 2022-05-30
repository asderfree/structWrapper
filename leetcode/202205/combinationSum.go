package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/10:16:22
 *@Version: v1.0.0
 *@File: combinationSum
 *@Info: 216. Combination sum
 *@Desc: https://leetcode.com/problems/combination-sum-iii/
**/

// fSolve: pos: cur position , len: the total length
func fSolve(pos, left, l, k int, cur []int, result *[][]int) {
	if left == 0 {
		if len(cur) == k {
			*result = append(*result, append(append([]int{}, cur...)))
		}
		return
	}
	if left < 0 || left < pos || len(cur) > k {
		return
	}
	for i := pos; i <= l; i++ {
		cur = append(cur, i)
		fSolve(i+1, left-i, l, k, cur, result)
		cur = cur[:len(cur)-1]
	}
}

// combintionSum3
func combinationSum3(k int, n int) [][]int {
	var ans [][]int
	var cur []int
	fSolve(1, n, 9, k, cur, &ans)
	return ans
}
