package leetcode

import "sort"

/**
 *@Description: 406. Queue Reconstruction by Height
 *@Info:https://leetcode.com/problems/queue-reconstruction-by-height/
 *@Brief: given a pair queue, sort the queue with a[i][0] <= a[j][0] and a[i][1] <= a[j][1]
 */

func reconstructQueue(people [][]int) [][]int {
	sort.Slice(people, func(i, j int) bool {
		if people[i][0] < people[j][0] {
			return true
		}
		if people[i][0] > people[j][0] {
			return false
		}
		return people[i][1] > people[j][1]
	})

	output := make([][]int, len(people))
	for _, p := range people {
		count := p[1]
		for i, e := range output {
			if e == nil && count == 0 {
				output[i] = p
				break
			} else if e == nil || e[0] >= p[0] {
				count--
			}
		}
	}
	return output
}
