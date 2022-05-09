package leetcode

import (
	"reflect"
	"testing"
)

/**
 *@Author: hawkingdong
 *@Time: 2022/5/9:15:26
 *@Version: v1.0.0
 *@File: letterCombination_test.go
 *@Info:
 *@Desc:
**/

func Test_letterCombinations(t *testing.T) {
	type args struct {
		digits string
	}
	tests := []struct {
		name string
		args args
		want []string
	}{
		// TODO: Add test cases.
		{"test", args{"23"}, []string{"ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"}},
		{"test", args{"2"}, []string{"a", "b", "c"}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := letterCombinations(tt.args.digits); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("letterCombinations() = %v, want %v", got, tt.want)
			}
		})
	}
}
