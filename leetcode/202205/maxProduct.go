package leetcode

import "fmt"

/**
 * @Descripe: 318. Maximum Product of Word Lengths
 * @Info: https://leetcode.com/problems/maximum-product-of-word-lengths/
 */

func getMax(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func maxProduct(words []string) int {
	n, res := len(words), 0
	bitMaskMap := make([]int, n)
	for i, word := range words {
		// 使用bitmap 记录word每个位
		for _, ch := range word {
			bitMaskMap[i] |= 1 << (ch - 'a')
		}
		for j := 0; j < i; j++ {
			if (bitMaskMap[i] & bitMaskMap[j]) == 0 {
				fmt.Println(i, j)
				res = getMax(res, len(word)*len(words[j]))
			}
		}
	}
	fmt.Println(bitMaskMap)
	return res
}
