package leetcode

import "sort"

/**
 * @Description: 1268. Search Suggestions System
 * @Info: https://leetcode.com/problems/search-suggestions-system/
 * 先对被搜查的数组a进行排序, 排序后的 j > i;a[i] 如果有前缀s, 那么 a[j] 可能也有相同前缀
 */

func suggestedProducts(products []string, searchWord string) [][]string {
	sort.Strings(products)
	left, right, lenSearchWord := 0, len(products)-1, len(searchWord)
	var ans [][]string

	for i := 0; i < lenSearchWord; i++ {
		var tAns []string
		c := searchWord[i]
		for left <= right {
			if len(products[left]) == i || products[left][i] < c {
				left++
			} else {
				break
			}
		}
		for left <= right {
			if len(products[right]) == i || products[right][i] > c {
				right--
			} else {
				break
			}
		}
		for j := 0; j < 3 && left+j <= right; j++ {
			tAns = append(tAns, products[j+left])
		}
		ans = append(ans, tAns)
	}
	return ans
}
