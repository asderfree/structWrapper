package leetcode

/**
 * @Description: 1461. Check If a String Contains All Binary Codes of Size K
 * @Info: https://leetcode.com/problems/check-if-a-string-contains-all-binary-codes-of-size-k/
 */

// 计算k位全1的数值
func allOne(n int) int {
	if n == 1 {
		return 1
	}
	return allOne(n-1) + (1 << (n - 1))
}

func hasAllCodes(s string, k int) bool {
	if len(s) < k {
		return false
	}
	bitMap := make([]bool, (1 << k))
	var tempInt int
	for j := 0; j < k; j++ {
		tempInt = (tempInt * 2) + int(s[j]-'0')
	}
	bitMap[tempInt] = true
	for i := 1; i <= len(s)-k; i++ {
		tempInt = (tempInt-(int(s[i-1]-'0')<<(k-1)))*2 + int(s[i+k-1]-'0')
		bitMap[tempInt] = true
	}
	for _, v := range bitMap {
		if !v {
			return false
		}
	}
	return true
}
