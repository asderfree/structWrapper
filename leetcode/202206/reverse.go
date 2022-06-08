package leetcode

/**
 * @Description: 7. Reverse Integer
 * @Info: https://leetcode.com/problems/reverse-integer/
 */

func reverse(x int) int {
	negtive := x < 0
	n, result := x, 0
	if negtive {
		n = 0 - n
	}
	for n > 0 {
		result = result*10 + (n % 10)
		n = n / 10
	}
	if negtive {
		result = 0 - result
	}
	if result >= 2147483648 || result < -2147483648 {
		return 0
	}
	return result
}
