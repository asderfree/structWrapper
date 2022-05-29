/*
 * @Description: 4. Median of Two Sorted Arrays
 * @Info: https://leetcode.com/problems/median-of-two-sorted-arrays/
**/
package leetcode

func findMedianSortedArrays(nums1 []int, nums2 []int) float64 {
	n1, n2 := len(nums1), len(nums2)
	count, mid := 0, (n1+n2)/2
	values1, values2 := 0, 0
	oddMid := (n1+n2)%2 != 0
	for i1, i2 := 0, 0; i1 < n1 || i2 < n2; {
		if count == mid+1 {
			break
		}
		values1 = values2
		if i1 < n1 && i2 < n2 {
			if nums1[i1] < nums2[i2] {
				values2 = nums1[i1]
				i1++
			} else {
				values2 = nums2[i2]
				i2++
			}
		} else if i1 < n1 {
			values2 = nums1[i1]
			i1++
		} else {
			values2 = nums2[i2]
			i2++
		}
		count++
	}
	if oddMid {
		return float64(values2)
	} else {
		return float64((float64(values1) + float64(values2)) / 2)
	}
}
