package leetcode

import (
	"fmt"
	"sort"
	"strings"
)

// 20220611 周赛

//
func strongPasswordCheckerII(password string) bool {
	specials := "!@#$%^&*()-+"
	hasLow, hasUpper, isDigit, hasSpecial := false, false, false, false
	for i := range password {
		if password[i] >= 'a' && password[i] <= 'z' {
			hasLow = true
		} else if password[i] >= 'A' && password[i] <= 'Z' {
			hasUpper = true
		} else if strings.ContainsRune(specials, rune(password[i])) {
			hasSpecial = true
		} else if password[i] >= '0' && password[i] <= '9' {
			isDigit = true
		}
		if i > 0 && password[i] == password[i-1] {
			return false
		}
	}
	return hasLow && hasSpecial && hasUpper && isDigit && len(password) >= 8
}

// 直接查会超时 需要二分查找对potions排序后处理
func firstSuccPos(nums []int, spell, success int64) int {
	l, r := 0, len(nums)-1
	expect := float64(success) / float64(spell)
	ret := -1
	for l <= r {
		m := (l + r) / 2
		if float64(nums[m]) >= expect {
			r = m - 1
			ret = m
		} else {
			l = m + 1
		}
	}
	return ret
}

func successfulPairs(spells []int, potions []int, success int64) []int {
	sort.Ints(potions)
	var result []int
	fmt.Println(potions)
	for _, i := range spells {
		pos := firstSuccPos(potions, int64(i), success)
		fmt.Println(pos)
		t := 0
		if pos == -1 {
			result = append(result, t)
			continue
		}
		result = append(result, len(potions)-pos)
	}
	return result
}

func countSubarrays(nums []int, k int64) int64 {
	// 滑动窗口
	ret := int64(0)
	t_nums := 0 // 记录从nums[i]-nums[j]的和
	for l, r := 0, 0; r < len(nums); r++ {
		t_nums = t_nums + nums[r]
		for int64(t_nums*(r-l+1)) >= k {
			t_nums = t_nums - nums[l]
			l++
		}
		// fmt.Println(l, r)
		ret = ret + int64(r-l+1)
	}
	return ret
}

func calculateTax(brackets [][]int, income int) float64 {
	ret, fincome := float64(0), float64(income)
	for i, bracket := range brackets {
		if fincome > float64(bracket[0]) {
			if i == 0 {
				ret = ret + float64(bracket[0])*float64(bracket[1])
			} else {
				ret = ret + float64(bracket[0]-brackets[i-1][0])*float64(bracket[1])
			}
		} else {
			if i == 0 {
				ret = ret + fincome*float64(bracket[1])
			} else {
				ret = ret + (fincome-float64(brackets[i-1][0]))*float64(bracket[1])
			}
			break
		}
	}
	return ret / 100
}
