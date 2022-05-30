package leetcode

/**
 * @Desciption: 3. Longest Substring Without Repeating Characters
 * @Info: https://leetcode.com/problems/longest-substring-without-repeating-characters/
 */

// use sliding windows to resolve the problem
func lengthOfLongestSubstring(s string) int {
	j, l, r, ans := 0, 0, 0, 0
	for ; r < len(s); r++ {
		noRepeat := true
		for j = l; j < r && noRepeat; j++ {
			noRepeat = (s[j] != s[r])
		}
		// has the rePeated
		if !noRepeat {
			l = j
		}
		// refresh the ans
		if ans < r-l+1 {
			ans = r - l + 1
		}
	}
	return ans
}
