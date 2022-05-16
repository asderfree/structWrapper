package leetcode

import "testing"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/11:21:13
 *@Version: v1.0.0
 *@File: count_test.go
 *@Info:
 *@Desc:
**/

func Test_countVowelStrings(t *testing.T) {
	type args struct {
		n int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test", args{2}, 15},
		{"test", args{33}, 66045},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := countVowelStrings(tt.args.n); got != tt.want {
				t.Errorf("countVowelStrings() = %v, want %v", got, tt.want)
			}
		})
	}
}
