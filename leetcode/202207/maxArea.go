package leetcode

import "sort"

func maxArea(hLen int, wLen int, horizontalCuts []int, verticalCuts []int) int {
	max := func(a, b int) int {
		if a > b {
			return a
		}
		return b
	}
	if len(horizontalCuts) == 0 || len(verticalCuts) == 0 {
		return 0
	}
	sort.Ints(horizontalCuts)
	sort.Ints(verticalCuts)
	hMax, wMax := 0, 0
	hLast, wLast := 0, 0
	for _, h := range horizontalCuts {
		hMax = max(hMax, h-hLast)
		hLast = h
	}
	hMax = max(hMax, hLen-hLast)
	for _, w := range verticalCuts {
		wMax = max(wMax, w-wLast)
		wLast = w
	}
	wMax = max(wMax, wLen-wLast)
	return (hMax * wMax) % (1e9 + 7)
}
