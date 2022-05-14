package leetcode

/**
 * @Author: asderfree
 * @Email: asderfree@163.com
 * @File: 743. Network Delay Time
 * @Date: 2022/5/14 14:56
 * @Desc: https://leetcode.com/problems/network-delay-time/
**/

func networkDelayTime(times [][]int, n int, k int) int {
	// build the table
	table := map[int][][2]int{}
	for _, time := range times {
		table[time[0]] = append(table[time[0]], [2]int{time[1], time[2]})
	}
	minpath := map[int]int{}
	seen := map[int]bool{}

	var dfs func(int, int)
	dfs = func(node, weight int) {
		seen[node] = true
		if _, ok := minpath[node]; !ok {
			minpath[node] = weight
		} else if weight >= minpath[node] {
			return
		} else {
			minpath[node] = weight
		}

		for _, n := range table[node] {
			dfs(n[0], weight+n[1])
		}
	}
	dfs(k, 0)
	if len(seen) != n {
		return -1
	}
	maxTime := -1
	for _, dist := range minpath {
		maxTime = max(maxTime, dist)
	}
	return maxTime
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
