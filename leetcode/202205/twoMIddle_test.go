/*
 * @Description: 4. Median of Two Sorted Arrays
 * @Info: https://leetcode.com/problems/median-of-two-sorted-arrays/
**/

package leetcode

import "testing"

func Test_findMedianSortedArrays(t *testing.T) {
	type args struct {
		nums1 []int
		nums2 []int
	}
	tests := []struct {
		name string
		args args
		want float64
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 2, 3, 4}, []int{2, 3, 4, 5}}, 3.000},
		{"test1", args{[]int{1, 2}, []int{3, 4}}, 2.5000},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := findMedianSortedArrays(tt.args.nums1, tt.args.nums2); got != tt.want {
				t.Errorf("findMedianSortedArrays() = %v, want %v", got, tt.want)
			}
		})
	}
}
