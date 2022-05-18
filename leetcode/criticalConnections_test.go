/*
 * @Author: hawkingdong
 * @Date: 2022-05-18 16:50:44
 * @LastEditors: hawkingdong hawkingdong@futunn.com
 * @LastEditTime: 2022-05-18 17:07:57
 * @FilePath: \test_env\leetcode\criticalConnections.go
 * @Description: 测试文件
 */

package leetcode

import (
	"reflect"
	"testing"
)

func Test_criticalConnections(t *testing.T) {
	type args struct {
		n           int
		connections [][]int
	}
	tests := []struct {
		name string
		args args
		want [][]int
	}{
		// TODO: Add test cases.
		{"test1", args{4, [][]int{{0, 1}, {1, 2}, {2, 0}, {3, 1}}}, [][]int{{3, 1}}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := criticalConnections(tt.args.n, tt.args.connections); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("criticalConnections() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_findMin(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := findMin(tt.args.a, tt.args.b); got != tt.want {
				t.Errorf("findMin() = %v, want %v", got, tt.want)
			}
		})
	}
}
