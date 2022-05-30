package leetcode

/*
 * @Date: 2022-05-30 10:58:32
 * @LastEditors: asderfree
 * @LastEditTime: 2022-05-30 11:17:51
 * @FilePath: \test_env\leetcode\202205\divideTwo.go
 * @Description: https://leetcode.com/problems/divide-two-integers/
 */

func abs(a int) int {
	if a < 0 {
		return 0 - a
	}
	return a
}

func divide(dividend int, divisor int) int {
	ans := 0
	positive := (dividend > 0 && divisor > 0) || (dividend < 0 && divisor < 0)
	dividend, divisor = abs(dividend), abs(divisor)
	for dividend >= divisor {
		ans++
		dividend -= divisor
	}

	if !positive {
		ans = 0 - ans
		if ans < -2147483648 {
			ans = -2147483648
		}
		return ans
	}
	if ans > 2147483647 {
		ans = 2147483647
	}
	return ans
}
