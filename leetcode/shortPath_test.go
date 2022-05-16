package leetcode

import "testing"

func Test_shortestPathBinaryMatrix(t *testing.T) {
	type args struct {
		grid [][]int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[][]int{{0, 1}, {0, 1}}}, 2},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := shortestPathBinaryMatrix(tt.args.grid); got != tt.want {
				t.Errorf("shortestPathBinaryMatrix() = %v, want %v", got, tt.want)
			}
		})
	}
}
