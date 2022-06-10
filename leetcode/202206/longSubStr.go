package leetcode

/**
 * @Descipition: 3. Longest Substring Without Repeating Characters
 * @Info: https://leetcode.com/problems/longest-substring-without-repeating-characters/
 */

func lengthOfLongestSubstring(s string) int {
	recordMap := make(map[byte]int)
	ret, beginPosition, curLen := 0, 0, 0

	for i := range s {

		if recordMap[s[i]] != 0 {
			if curLen > ret {
				ret = curLen
			}
			for j := beginPosition; j < i; j++ {
				recordMap[s[j]]--
				curLen--
				if s[j] == s[i] {
					beginPosition = j + 1
					break
				}
			}
		}
		curLen++
		recordMap[s[i]]++
	}
	if ret < curLen {
		ret = curLen
	}
	return ret
}
