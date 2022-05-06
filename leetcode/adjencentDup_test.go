package leetcode

import "testing"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/6:11:30
 *@Version: v1.0.0
 *@File: adjencentDup_test.go
 *@Info:
 *@Desc:
**/

func Test_isKDup(t *testing.T) {
	type args struct {
		stack []byte
		k     int
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		// TODO: Add test cases.
		{"test is dup", args{[]byte{'a', 'b', 'a', 'a'}, 2}, true},
		{"test isn't dup", args{[]byte{'a', 'b', 'a', 'a'}, 3}, false},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := isKDup(tt.args.stack, tt.args.k); got != tt.want {
				t.Errorf("isKDup() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_removeDuplicates(t *testing.T) {
	type args struct {
		s string
		k int
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		// TODO: Add test cases.
		{"test1", args{"deeedbbcccbdaa", 3}, "aa"},
		{"test2", args{"abcd", 2}, "abcd"},
		{"test3", args{"abcd", 1}, ""},
		{"test4", args{"pbbcggttciiippooaais", 2}, "ps"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := removeDuplicates(tt.args.s, tt.args.k); got != tt.want {
				t.Errorf("removeDuplicates() = %v, want %v", got, tt.want)
			}
		})
	}
}
