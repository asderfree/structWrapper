package leetcode

// import "fmt"

/*
 * @Date: 2022-05-24 11:10:59
 * @LastEditors: asderfree
 * @LastEditTime: 2022-05-24 20:30:09
 * @FilePath: \test_env\leetcode\validLogestPar.go
 * @Description: The longest valid () in the pattern
 * @Info: 32. Longest Valid Parentheses
 * @Desc: https://leetcode.com/problems/longest-valid-parentheses/
 */

func longestValidParentheses(s string) int {
	length, res := len(s), 0
	var sta []int
	for i := range s {
		if s[i] == '(' {
			sta = append(sta, i)
		} else {
			if len(sta) == 0 {
				sta = append(sta, i)
			} else {
				if s[sta[len(sta)-1]] == '(' {
					sta = sta[:len(sta)-1]
				} else {
					sta = append(sta, i)
				}
			}
		}
	}
	if len(sta) == 0 {
		return length
	}
	for j := len(sta) - 1; j >= 0; j-- {
		res = max(res, length-sta[j]-1)
		length = sta[j]
	}
	res = max(res, length)
	return res
}
