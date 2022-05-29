package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/6:11:19
 *@Version: v1.0.0
 *@File: adjencentDup
 *@Info: 1209. Remove all adjacent duplicates in string
 *@Desc: https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string-ii/
**/

func isKDup(stack []byte, k int) bool {
	if len(stack) < k {
		return false
	}
	for i := len(stack) - 2; i >= len(stack)-k; i-- {
		if stack[i] != stack[len(stack)-1] {
			return false
		}
	}
	return true
}

// TODO improve: why not record the count of the times?
func removeDuplicates(s string, k int) string {
	stack := []byte{}
	for i := 0; i < len(s); i++ {
		stack = append(stack, s[i])
		if isKDup(stack, k) {
			stack = stack[0 : len(stack)-k]
		}
	}
	return string(stack)
}
