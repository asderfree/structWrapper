package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/11:21:11
 *@Version: v1.0.0
 *@File: count
 *@Info: 1641. Count Sorted Vowel Strings
 *@Desc: https://leetcode.com/problems/count-sorted-vowel-strings/
**/
func countVowelStrings(n int) int {
	var a, e, i, o, u int
	a = 1
	e = 1
	i = 1
	o = 1
	u = 1
	for ; n > 1; n-- {
		e = a + e
		i = i + e
		o = o + i
		u = u + o
	}
	return a + e + i + o + u
}
