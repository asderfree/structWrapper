package leetcode

import "testing"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/7:11:46
 *@Version: v1.0.0
 *@File: pattern_test.go
 *@Info:
 *@Desc:
**/

func Test_find132pattern(t *testing.T) {
	type args struct {
		nums []int
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		// TODO: Add test cases.
		{"wrong", args{[]int{1, 3, 2, 4, 5, 6, 7, 8, 9, 10}}, true},
		{"wrong", args{[]int{1, 2, 3, 4}}, false},
		{"wrong", args{[]int{3, 1, 4, 2}}, true},
		{"wrong", args{[]int{3, 6, 4, 1, 2}}, true},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := find132pattern(tt.args.nums); got != tt.want {
				t.Errorf("find132pattern() = %v, want %v", got, tt.want)
			}
		})
	}
}
