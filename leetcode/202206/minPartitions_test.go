package leetcode

import "testing"

func Test_minPartitions(t *testing.T) {
	type args struct {
		n string
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{"1234124145977"}, 9},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := minPartitions(tt.args.n); got != tt.want {
				t.Errorf("minPartitions() = %v, want %v", got, tt.want)
			}
		})
	}
}
