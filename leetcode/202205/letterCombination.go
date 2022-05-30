package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/9:15:17
 *@Version: v1.0.0
 *@File: letterCombination
 *@Info: 17 Letter Combinations of a Phone Number
 *@Desc: https://leetcode.com/problems/letter-combinations-of-a-phone-number/
**/
func letterCombinations(digits string) []string {
	digmap := map[byte]string{'1': "", '2': "abc", '3': "def", '4': "ghi", '5': "jkl", '6': "mno", '7': "pqrs", '8': "tuv", '9': "wxyz"}
	ans := []string{}
	for i := 0; i < len(digits); i++ {
		t := digmap[digits[i]]
		if len(ans) == 0 {
			for j := 0; j < len(t); j++ {
				ans = append(ans, string(t[j]))
			}
		} else {
			var temp_ans []string
			for k := 0; k < len(ans); k++ {
				for j := 0; j < len(t); j++ {
					temp_ans = append(temp_ans, ans[k]+string(t[j]))
				}

			}
			ans = temp_ans
		}
	}
	return ans
}
