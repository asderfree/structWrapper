package leetcode

/**
 * @ Description: 1689. Partitioning Into Minimum Number Of Deci-Binary Numbers
 * @ Info: https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/
 */

func minPartitions(n string) int {
	res := 0
	for _, v := range n {
		if int(v-'0') > res {
			res = int(v - '0')
		}
	}
	return res
}
