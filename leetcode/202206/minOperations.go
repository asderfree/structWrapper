package leetcode

/**
 * @Description: 1658. Minimum Operations to Reduce X to Zero
 * @Info: https://leetcode.com/problems/minimum-operations-to-reduce-x-to-zero/
 */

func minOperations(nums []int, x int) int {
	max := func(a, b int) int {
		if a > b {
			return a
		}
		return b
	}
	var total int
    for _, num := range nums {
        total += num
    }
    n := len(nums)
    maxi := -1
    left := 0
    current := 0
    for right:=0; right<n; right ++ {
        current += nums[right]
        
        for current > total - x && left <= right {
            current -= nums[left]
            left += 1
        }
        
        if current == total -x {
            maxi = max(maxi, right-left+1)
        }
    }
    if maxi != -1 {
        return n-maxi
    }
    return -1
}
