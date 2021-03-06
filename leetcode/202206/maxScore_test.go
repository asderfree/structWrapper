package leetcode

import (
	"testing"
)

func Test_maxScore(t *testing.T) {
	type args struct {
		cardPoints []int
		k          int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 2, 3, 4, 5, 6, 1}, 3}, 12},
		{"test2", args{[]int{2, 2, 2}, 2}, 4},
		{"test3", args{[]int{9, 7, 7, 9, 7, 7, 9}, 7}, 55},
		{"test4", args{[]int{1}, 1}, 1},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := maxScore(tt.args.cardPoints, tt.args.k); got != tt.want {
				t.Errorf("maxScore() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_maximumScore(t *testing.T) {
	type args struct {
		nums        []int
		multipliers []int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 2, 3}, []int{3, 2, 1}}, 14},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := maximumScore(tt.args.nums, tt.args.multipliers); got != tt.want {
				t.Errorf("maximumScore() = %v, want %v", got, tt.want)
			}
		})
	}
}
