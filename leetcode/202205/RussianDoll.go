package leetcode

import (
	"fmt"
	"sort"
)

/*
 * @Date: 2022-05-25 09:36:07
 * @LastEditors: asderfree
 * @LastEditTime: 2022-05-25 10:15:36
 * @FilePath: \test_env\leetcode\RussianDoll.go
 * @Description: 354. Russian Doll Envelopes https://leetcode.com/problems/russian-doll-envelopes/
 */

// as we has know the length of the array is two, we can don't judge the size
func maxEnvelopes(envelopes [][]int) int {

	// sort the arr with asending by width and descending by height
	// to convert the question into find LIS
	sort.Slice(envelopes, func(i, j int) bool {
		if envelopes[i][0] == envelopes[j][0] {
			return envelopes[i][1] > envelopes[j][1]
		} else {
			return envelopes[i][0] < envelopes[j][0]
		}
	})
	fmt.Println(envelopes)
	n := len(envelopes)
	if n <= 1 {
		return n
	}

	size := 0
	c := make([]int, 0)

	for i := 0; i < n; i++ {
		l, r := 0, size-1
		for l <= r {
			mid := (l + r) / 2
			if c[mid] >= envelopes[i][1] {
				r = mid - 1
			} else {
				l = mid + 1
			}
		}

		if l < size {
			c[l] = envelopes[i][1]
		} else {
			c = append(c, envelopes[i][1])
			size = Max(size, l+1)
		}
	}

	return size
}

func Max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}
