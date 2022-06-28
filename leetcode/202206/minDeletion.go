package leetcode

import (
	"sort"
	"strings"
)

/**
 * @Descrition: 1647. Minimum Deletions to Make Character Frequencies Unique
 * @Info: https://leetcode.com/problems/minimum-deletions-to-make-character-frequencies-unique/
 */

func minDeletions(s string) int {
	if len(s) <= 1 {
		return 0
	}
	sortString := func(w string) string {
		s := strings.Split(w, "")
		sort.Strings(s)
		return strings.Join(s, "")
	}
	recordMap := make(map[int]int)
	sortedS := sortString(s)
	last := rune(sortedS[0])
	cnt, res := 0, 0
	for _, v := range sortedS {
		if v == last {
			cnt++
			continue
		}
		recordMap[cnt]++
		if recordMap[cnt] > 1 {
			for i := cnt - 1; i >= 0; i-- {
				if recordMap[i] == 0 {
					if i != 0 {
						recordMap[i]++
					}
					res += cnt - i
					recordMap[cnt]--
					break
				}
			}
		}
		cnt = 1
		last = v
	}
	recordMap[cnt]++
	if recordMap[cnt] > 1 {
		for i := cnt - 1; i >= 0; i-- {
			if recordMap[i] == 0 {
				if i != 0 {
					recordMap[i]++
				}
				res += cnt - i
				recordMap[cnt]--
				break
			}
		}
	}
	return res
}
