package leetcode

import "testing"

func Test_maxResult(t *testing.T) {
	type args struct {
		nums []int
		k    int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 0, -4, -6, 4, 7}, 3}, 12},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := maxResult(tt.args.nums, tt.args.k); got != tt.want {
				t.Errorf("maxResult() = %v, want %v", got, tt.want)
			}
		})
	}
}
