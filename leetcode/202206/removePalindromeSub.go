package leetcode

/**
 * @Description: 1332. Remove Palindromic Subsequences
 * @Info: https://leetcode.com/problems/remove-palindromic-subsequences/
 */

func ReverseStr(s string) string {
	a := func(s string) *[]rune {
		var b []rune
		for _, k := range s {
			defer func(v rune) {
				b = append(b, v)
			}(k)
		}
		return &b
	}(s)
	return string(*a)
}

func removePalindromeSub(s string) int {
	l := len(s)
	if l <= 1 {
		return 1
	}
	if s == ReverseStr(s) {
		return 1
	}
	return 2
}
