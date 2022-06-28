package leetcode

import "testing"

func Test_minDeletions(t *testing.T) {
	type args struct {
		s string
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		// {"test1", args{"abbfegggf"}, 3},
		{"test2", args{"aaabbbcc"},2},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := minDeletions(tt.args.s); got != tt.want {
				t.Errorf("minDeletions() = %v, want %v", got, tt.want)
			}
		})
	}
}
