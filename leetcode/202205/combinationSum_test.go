package leetcode

import (
	"reflect"
	"testing"
)

/**
 *@Author: hawkingdong
 *@Time: 2022/5/10:16:30
 *@Version: v1.0.0
 *@File: combinationSum_test.go
 *@Info:
 *@Desc:
**/

func Test_combinationSum3(t *testing.T) {
	type args struct {
		k int
		n int
	}
	tests := []struct {
		name string
		args args
		want [][]int
	}{
		// TODO: Add test cases.
		{"test1", args{3, 7}, [][]int{{1, 2, 4}}},
		{"test1", args{9, 45}, [][]int{{1, 2, 3, 4, 5, 6, 7, 8, 9}}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := combinationSum3(tt.args.k, tt.args.n); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("combinationSum3() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_fSolve(t *testing.T) {
	type args struct {
		pos    int
		left   int
		l      int
		k      int
		cur    []int
		result *[][]int
	}
	tests := []struct {
		name string
		args args
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			fSolve(tt.args.pos, tt.args.left, tt.args.l, tt.args.k, tt.args.cur, tt.args.result)
		})
	}
}
