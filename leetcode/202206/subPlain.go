package leetcode

/**
 * @Description: 5. Longest Palindromic Substring
 * @Info: https://leetcode.com/problems/longest-palindromic-substring/
 */
 
 func f(s string, i int, j int) string {
	// expand both sides, till string is palindrome
    for i >= 0 && j < len(s) && s[i] == s[j] {
        i--;
        j++;
    }
	// return substring
    return s[i+1:j]
}

func subPlain(s string) string {
    res := ""
    for i := 0; i < len(s); i++ {
		// check for palindrome (even size)
        temp := f(s, i, i)
        if len(temp) > len(res) {
            res = temp
        }
		// check for palindrome (odd size)
        temp2 := f(s, i, i+1)
        if len(temp2) > len(res) {
            res = temp2
        }
    }
    return res
}