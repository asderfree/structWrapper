package leetcode

import "testing"

func Test_allOne(t *testing.T) {
	type args struct {
		n int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{2}, 3},
		{"test2", args{3}, 7},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := allOne(tt.args.n); got != tt.want {
				t.Errorf("allOne() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_hasAllCodes(t *testing.T) {
	type args struct {
		s string
		k int
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		// TODO: Add test cases.
		{"test1", args{"00110", 2}, true},
		{"test1", args{"0110", 2}, false},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := hasAllCodes(tt.args.s, tt.args.k); got != tt.want {
				t.Errorf("hasAllCodes() = %v, want %v", got, tt.want)
			}
		})
	}
}
